import 'package:flutter/material.dart';
import '../../domain/entities/onboarding_state.dart';

class DebugPanel extends StatefulWidget {
  final OnboardingState state;

  const DebugPanel({super.key, required this.state});

  @override
  State<DebugPanel> createState() => _DebugPanelState();
}

class _DebugPanelState extends State<DebugPanel> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black87,
      margin: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text(
              'Debug State',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              _expanded ? Icons.expand_less : Icons.expand_more,
              color: Colors.white,
            ),
            onTap: () => setState(() => _expanded = !_expanded),
            dense: true,
          ),
          if (_expanded)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(
                // Simple pretty print
                widget.state.toString(),
                style: const TextStyle(
                  color: Colors.lightGreenAccent,
                  fontFamily: 'Courier',
                  fontSize: 10,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
