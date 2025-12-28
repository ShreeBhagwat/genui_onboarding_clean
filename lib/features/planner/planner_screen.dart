import 'package:flutter/material.dart';
import 'package:genui_onboarding_clean/genui_core/genui_mini.dart';
import 'package:genui_onboarding_clean/genui/genui_setup.dart';
import 'package:genui_onboarding_clean/genui/surface_ids.dart';
import 'package:genui_onboarding_clean/ui/widgets/message_input_bar.dart';

// Sample Prompts:
// - "Plan 3 days in Kyoto in November, budget ₹70k, love cafes and temples"
// - "Create a 5-day Paris itinerary, slow pace, art museums, vegetarian food"
// - "2-day Goa weekend, low budget, beaches + nightlife"

class PlannerScreen extends StatefulWidget {
  final String apiKey;

  const PlannerScreen({super.key, required this.apiKey});

  @override
  State<PlannerScreen> createState() => _PlannerScreenState();
}

class _PlannerScreenState extends State<PlannerScreen> {
  PlanMyTripGenUiSession? _session;
  final _inputController = TextEditingController();
  bool _paramLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _initSession();
  }

  Future<void> _initSession() async {
    try {
      final session = await PlanMyTripGenUiSession.create(widget.apiKey);
      if (mounted) {
        setState(() {
          _session = session;
        });
      }
    } catch (e) {
      if (mounted) setState(() => _error = e.toString());
    }
  }

  @override
  void dispose() {
    _session?.dispose();
    _inputController.dispose();
    super.dispose();
  }

  bool _hasStarted = false;

  final _samplePrompts = [
    'Plan 3 days in Kyoto in November, budget ₹70k, love cafes and temples',
    'Create a 5-day Paris itinerary, slow pace, art museums, vegetarian food',
    '2-day Goa weekend, low budget, beaches + nightlife',
  ];

  Future<void> _sendMessage([String? text]) async {
    final messageText = text ?? _inputController.text.trim();
    if (messageText.isEmpty || _session == null) return;

    if (text != null) {
      _inputController.text = text;
    }

    // Clear input after setting it (if we want to clear) or just clear
    _inputController.clear();

    // We don't necessarily need a global loading state for the whole UI,
    // but showing some activity is good.
    setState(() {
      _paramLoading = true;
      _hasStarted = true;
    });

    try {
      await _session!.conversation.sendRequest(UserMessage.text(messageText));
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    } finally {
      if (mounted) setState(() => _paramLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Error initializing PlanMyTrip:\n$_error'),
          ),
        ),
      );
    }

    if (_session == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('PlanMyTrip'),
        bottom: _paramLoading
            ? const PreferredSize(
                preferredSize: Size.fromHeight(2),
                child: LinearProgressIndicator(minHeight: 2),
              )
            : null,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: travelSurfaceIds.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _hasStarted
                      ? const SizedBox.shrink()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: _samplePrompts
                              .map((prompt) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: ActionChip(
                                      label: Text(prompt),
                                      onPressed: () => _sendMessage(prompt),
                                    ),
                                  ))
                              .toList(),
                        );
                }

                final id = travelSurfaceIds[index - 1];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(id, style: Theme.of(context).textTheme.labelSmall),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: GenUiSurface(
                          host: _session!.host,
                          surfaceId: id,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          MessageInputBar(controller: _inputController, onSend: _sendMessage),
        ],
      ),
    );
  }
}
