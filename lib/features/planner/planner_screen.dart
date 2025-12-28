import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

        // Listen to actions from GenUI components (like chip taps)
        _session!.host.actionStream.listen((action) {
          _sendMessage(action);
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
    'Show budget breakdown, weather, and some travel alerts for Singapore',
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
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                itemCount: travelSurfaceIds.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return _hasStarted
                        ? const SizedBox.shrink()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: _samplePrompts
                                .map((prompt) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12.0),
                                      child: ActionChip(
                                        padding: const EdgeInsets.all(12),
                                        label: Text(
                                          prompt,
                                          style:
                                              GoogleFonts.outfit(fontSize: 15),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          side: BorderSide(
                                              color:
                                                  Colors.teal.withOpacity(0.3)),
                                        ),
                                        backgroundColor: Colors.teal.shade50,
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
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Text(
                            id.toUpperCase(),
                            style: GoogleFonts.outfit(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            // Transparent because the components themselves now have cards/shadows
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          clipBehavior: Clip.none, // Allow shadows to spill
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
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: MessageInputBar(
                  controller: _inputController, onSend: _sendMessage),
            ),
          ],
        ),
      ),
    );
  }
}
