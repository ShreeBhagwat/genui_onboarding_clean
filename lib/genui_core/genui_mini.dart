import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

// --- Core Abstractions ---

class GenUiManager {
  final Map<String, Widget Function(Map<String, dynamic>)> catalog;
  GenUiManager({required this.catalog});
}

class GenUiHost {
  final GenUiManager manager;
  final _surfaceControllers =
      <String, StreamController<List<Map<String, dynamic>>>>{};
  final _surfaceState = <String, List<Map<String, dynamic>>>{};

  GenUiHost({required this.manager});

  Stream<List<Map<String, dynamic>>> getSurfaceStream(String surfaceId) {
    if (!_surfaceControllers.containsKey(surfaceId)) {
      _surfaceControllers[surfaceId] = StreamController.broadcast();
    }
    return _surfaceControllers[surfaceId]!.stream;
  }

  List<Map<String, dynamic>> currentSurfaceState(String surfaceId) {
    return _surfaceState[surfaceId] ?? [];
  }

  void updateSurface(String surfaceId, List<Map<String, dynamic>> components) {
    _surfaceState[surfaceId] = components;
    if (_surfaceControllers.containsKey(surfaceId)) {
      _surfaceControllers[surfaceId]!.add(components);
    }
  }

  void dispose() {
    for (var c in _surfaceControllers.values) {
      c.close();
    }
  }
}

class GenUiConversation {
  final GoogleGenerativeAiContentGenerator contentGenerator;
  final GenUiManager manager;
  final List<Content> _history = [];

  // Callbacks could be added here to notify basic text messages vs UI updates

  GenUiConversation({
    required this.contentGenerator,
    required this.manager,
  });

  Future<void> sendRequest(UserMessage message) async {
    // 1. Add user message
    final userContent = Content.text(message.text);
    _history.add(userContent);
    await contentGenerator.generateResponse(message.text);

    // 2. Wrap the generator call
    // We assume the generator (GoogleGenerativeAiContentGenerator)
    // has a reference to the Host to apply updates directly,
    // or returns them.
    // For this simple demo, let the generator apply side effects to a host if it has one,
    // or (better) let's have the generator return the response text/JSON and we parse it here.

    // Actually, in the real GenUI, conversation manages this.
    // Let's pass the host to conversation or setup so we can update it.
    // I'll add a 'host' setter or field to this conversation.
  }
}

class UserMessage {
  final String text;
  UserMessage.text(this.text);
}

// --- Implementation ---

class GoogleGenerativeAiContentGenerator {
  final Map<String, Widget Function(Map<String, dynamic>)> catalog;
  final String systemInstruction;
  final String modelName;
  final String apiKey;

  late GenerativeModel _model;
  ChatSession? _chat;

  // We need the Host to apply updates.
  // In the real package, this is decoupled, but for Mini, let's inject it.
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
              return builder(props);
            }
            return Text('Unknown component: $type');
          }).toList(),
        );
      },
    );
  }
}

// --- Catalog ---

class CoreCatalogItems {
  static Map<String, Widget Function(Map<String, dynamic>)> asCatalog() {
    return {
      'header': (props) => ListTile(
            title: Text(props['title'] ?? '',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            subtitle:
                props['subtitle'] != null ? Text(props['subtitle']) : null,
          ),
      'section': (props) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(props['title'] ?? '',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                Text(props['content'] ?? ''),
              ],
            ),
          ),
      'card': (props) => Card(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (props['imageUrl'] != null)
                  Image.network(
                    props['imageUrl'],
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (c, e, s) => Container(
                        height: 150,
                        color: Colors.grey[300],
                        child: const Icon(Icons.image_not_supported)),
                  ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(props['title'] ?? '',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(props['description'] ?? ''),
                    ],
                  ),
                ),
              ],
            ),
          ),
      'day_plan': (props) => Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(props['day'] ?? 'Day',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.teal)),
                  const Divider(),
                  ...(props['activities'] as List? ?? []).map((a) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(children: [
                          const Icon(Icons.circle, size: 8),
                          const SizedBox(width: 8),
                          Expanded(child: Text(a.toString()))
                        ]),
                      )),
                ],
              ),
            ),
          ),
      'control_chips': (props) => Wrap(
            spacing: 8,
            children: (props['options'] as List? ?? [])
                .map((o) => ActionChip(
                      label: Text(o.toString()),
                      onPressed: () {}, // Interactive in real app
                    ))
                .toList(),
          ),
      'info_row': (props) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(props['label'] ?? '',
                    style: const TextStyle(color: Colors.grey)),
                Text(props['value'] ?? '',
                    style: const TextStyle(fontWeight: FontWeight.w500)),
              ],
            ),
          ),
    };
  }
}
