import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

// --- Core Abstractions ---

typedef GenUiActionCallback = void Function(String action);
typedef GenUiWidgetBuilder = Widget Function(
    Map<String, dynamic> props, GenUiActionCallback onAction);

class GenUiManager {
  final Map<String, GenUiWidgetBuilder> catalog;
  GenUiManager({required this.catalog});
}

class GenUiHost {
  final GenUiManager manager;
  final _surfaceControllers =
      <String, StreamController<List<Map<String, dynamic>>>>{};
  final _surfaceState = <String, List<Map<String, dynamic>>>{};
  final _actionController = StreamController<String>.broadcast();

  GenUiHost({required this.manager});

  Stream<List<Map<String, dynamic>>> getSurfaceStream(String surfaceId) {
    if (!_surfaceControllers.containsKey(surfaceId)) {
      _surfaceControllers[surfaceId] = StreamController.broadcast();
    }
    return _surfaceControllers[surfaceId]!.stream;
  }

  Stream<String> get actionStream => _actionController.stream;

  List<Map<String, dynamic>> currentSurfaceState(String surfaceId) {
    return _surfaceState[surfaceId] ?? [];
  }

  void updateSurface(String surfaceId, List<Map<String, dynamic>> components) {
    _surfaceState[surfaceId] = components;
    if (_surfaceControllers.containsKey(surfaceId)) {
      _surfaceControllers[surfaceId]!.add(components);
    }
  }

  void emitAction(String action) {
    _actionController.add(action);
  }

  void dispose() {
    for (var c in _surfaceControllers.values) {
      c.close();
    }
    _actionController.close();
  }
}

class GenUiConversation {
  final GoogleGenerativeAiContentGenerator contentGenerator;
  final GenUiManager manager;
  final List<Content> _history = [];

  GenUiConversation({
    required this.contentGenerator,
    required this.manager,
  });

  Future<void> sendRequest(UserMessage message) async {
    // 1. Add user message
    final userContent = Content.text(message.text);
    _history.add(userContent);
    await contentGenerator.generateResponse(message.text);
  }
}

class UserMessage {
  final String text;
  UserMessage.text(this.text);
}

// --- Implementation ---

class GoogleGenerativeAiContentGenerator {
  final Map<String, GenUiWidgetBuilder> catalog; // Updated type
  final String systemInstruction;
  final String modelName;
  final String apiKey;

  late GenerativeModel _model;
  ChatSession? _chat;

  GenUiHost? host;

  GoogleGenerativeAiContentGenerator({
    required this.catalog,
    required this.systemInstruction,
    required this.modelName,
    required this.apiKey,
  }) {
    _model = GenerativeModel(
      model: modelName,
      apiKey: apiKey,
      systemInstruction: Content.system(systemInstruction + _jsonSchema),
      generationConfig: GenerationConfig(responseMimeType: 'application/json'),
    );
    _chat = _model.startChat();
  }

  final String _jsonSchema = '''
  
  RESPONSE FORMAT:
  You must respond with a JSON object.
  The JSON structure should be:
  {
    "surfaces": [
      {
        "surfaceId": "string (e.g. trip_overview)",
        "components": [
          {
            "type": "string (matches catalog)",
            "props": { ... }
          }
        ]
      }
    ]
  }
  
  If the user asks a question, include a "text_response" field in the root JSON.
  
  CATALOG ITEM TYPES:
  - header: { title: String, subtitle: String? }
  - section: { title: String, content: String }
  - card: { title: String, description: String, imageUrl: String? }
  - day_plan: { day: String, activities: List<String> }
  - control_chips: { options: List<String> }
  - info_row: { label: String, value: String }
  - budget_breakdown: { items: List<{label:String, amount:String, color:String?}>, total: String }
  - weather_summary: { city: String, temp: String, condition: String }
  - alert_box: { type: String, message: String }
  ''';

  Future<void> generateResponse(String userText) async {
    if (host == null) return;

    try {
      final response = await _chat!.sendMessage(Content.text(userText));
      final text = response.text;
      if (text == null) return;

      // Parse JSON
      final data = jsonDecode(text) as Map<String, dynamic>;

      // Handle UI Updates
      if (data.containsKey('surfaces')) {
        final surfaces = data['surfaces'] as List;
        for (var s in surfaces) {
          final surfaceId = s['surfaceId'] as String;
          final components = List<Map<String, dynamic>>.from(s['components']);
          host!.updateSurface(surfaceId, components);
        }
      }

      // Handle text response? (For this demo, we mainly care about UI updates)
    } catch (e) {
      debugPrint('GenUI Error: $e');
    }
  }
}

// --- Widgets ---

class GenUiSurface extends StatelessWidget {
  final GenUiHost host;
  final String surfaceId;

  const GenUiSurface({super.key, required this.host, required this.surfaceId});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Map<String, dynamic>>>(
        stream: host.getSurfaceStream(surfaceId),
        initialData: host.currentSurfaceState(surfaceId),
        builder: (context, snapshot) {
          final components = snapshot.data ?? [];
          if (components.isEmpty) return const SizedBox.shrink();

          return Column(
            children: components.map((c) {
              final type = c['type'] as String;
              final props = c['props'] as Map<String, dynamic>;
              final builder = host.manager.catalog[type];
              if (builder != null) {
                return builder(props, (action) => host.emitAction(action));
              }
              return Text('Unknown component: $type');
            }).toList(),
          );
        });
  }
}

// --- Catalog ---

class CoreCatalogItems {
  static Map<String, GenUiWidgetBuilder> asCatalog() {
    return <String, GenUiWidgetBuilder>{
      'header': (Map<String, dynamic> props, GenUiActionCallback _) => Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  props['title'] ?? '',
                  style: GoogleFonts.outfit(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                if (props['subtitle'] != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    props['subtitle'],
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ],
            ),
          ),
      'section': (Map<String, dynamic> props, GenUiActionCallback _) =>
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.withOpacity(0.1)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  props['title'] ?? '',
                  style: GoogleFonts.outfit(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2D3436),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  props['content'] ?? '',
                  style: GoogleFonts.outfit(
                    fontSize: 15,
                    color: const Color(0xFF636E72),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
      'card': (Map<String, dynamic> props, GenUiActionCallback _) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (props['imageUrl'] != null)
                  Stack(
                    children: [
                      Image.network(
                        props['imageUrl'],
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (c, e, s) => Container(
                          height: 180,
                          color: Colors.grey[200],
                          child: const Center(
                              child: Icon(Icons.image,
                                  size: 40, color: Colors.grey)),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.3),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        props['title'] ?? '',
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        props['description'] ?? '',
                        style: GoogleFonts.outfit(
                          fontSize: 15,
                          color: Colors.black54,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      'day_plan': (Map<String, dynamic> props, GenUiActionCallback _) =>
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFF8F9FA), // Slight off-white
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey.withOpacity(0.1)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.teal.shade50,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        props['day'] ?? 'Day',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ...(props['activities'] as List? ?? [])
                    .asMap()
                    .entries
                    .map((entry) {
                  final isLast =
                      entry.key == (props['activities'] as List).length - 1;
                  return IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.teal.withOpacity(0.3),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                            ),
                            if (!isLast)
                              Expanded(
                                child: Container(
                                  width: 2,
                                  color: Colors.grey.shade200,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 24.0),
                            child: Text(
                              entry.value.toString(),
                              style: GoogleFonts.outfit(
                                fontSize: 15,
                                color: const Color(0xFF2D3436),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
      'control_chips': (Map<String, dynamic> props,
              GenUiActionCallback onAction) =>
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              children: (props['options'] as List? ?? []).map((o) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(24),
                      onTap: () => onAction(o.toString()),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        child: Text(
                          o.toString(),
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w600,
                            color: Colors.teal.shade700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
      'budget_breakdown': (Map<String, dynamic> props, GenUiActionCallback _) {
        final items = (props['items'] as List?) ?? [];
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Estimated Budget',
                style: GoogleFonts.outfit(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2D3436),
                ),
              ),
              const SizedBox(height: 16),
              ...items.map((item) {
                final color = item['color'] == 'accent'
                    ? Colors.teal
                    : Colors.grey.shade300;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Container(
                        width: 4,
                        height: 24,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          item['label'] ?? '',
                          style: GoogleFonts.outfit(
                            fontSize: 15,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Text(
                        item['amount'] ?? '',
                        style: GoogleFonts.outfit(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              }),
              const Divider(height: 32),
              Row(
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.outfit(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      props['total'] ?? '',
                      textAlign: TextAlign.end,
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      'weather_summary': (Map<String, dynamic> props, GenUiActionCallback _) =>
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade400, Colors.blue.shade600],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.wb_sunny_rounded,
                      color: Colors.white, size: 32),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        props['city'] ?? '',
                        style: GoogleFonts.outfit(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        props['temp'] ?? '',
                        style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  props['condition'] ?? '',
                  style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
      'alert_box': (Map<String, dynamic> props, GenUiActionCallback _) {
        final isError = props['type'] == 'error';
        final color = isError ? Colors.red.shade50 : Colors.amber.shade50;
        final textColor = isError ? Colors.red.shade800 : Colors.amber.shade900;
        final icon = isError ? Icons.error_outline : Icons.info_outline;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: textColor.withOpacity(0.2)),
          ),
          child: Row(
            children: [
              Icon(icon, color: textColor),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  props['message'] ?? '',
                  style: GoogleFonts.outfit(
                    color: textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      'info_row': (Map<String, dynamic> props, GenUiActionCallback _) =>
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  props['label'] ?? '',
                  style: GoogleFonts.outfit(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    props['value'] ?? '',
                    textAlign: TextAlign.end,
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2D3436),
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
    };
  }
}
