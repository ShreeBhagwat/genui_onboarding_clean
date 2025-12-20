import 'package:flutter/material.dart';

class OnbSingleChoiceWidget extends StatelessWidget {
  final String question;
  final List<Map<String, String>> options;
  final String? selectedKey;
  final ValueChanged<String> onSelected;

  const OnbSingleChoiceWidget({
    super.key,
    required this.question,
    required this.options,
    required this.onSelected,
    this.selectedKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(question, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        ...options.map((opt) {
          final isSelected = opt['key'] == selectedKey;
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: OutlinedButton(
              onPressed: () => onSelected(opt['key']!),
              style: OutlinedButton.styleFrom(
                backgroundColor: isSelected
                    ? Theme.of(context).primaryColor.withValues(alpha: 0.1)
                    : null,
                side: BorderSide(
                  color: isSelected
                      ? Theme.of(context).primaryColor
                      : Colors.grey[400]!,
                  width: isSelected ? 2 : 1,
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                opt['label']!,
                style: TextStyle(
                  color: isSelected
                      ? Theme.of(context).primaryColor
                      : Colors.black87,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
