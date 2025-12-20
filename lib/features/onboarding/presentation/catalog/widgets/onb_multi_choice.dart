import 'package:flutter/material.dart';

class OnbMultiChoiceWidget extends StatefulWidget {
  final String question;
  final List<Map<String, String>> options;
  final List<String> selectedKeys;
  final int maxSelection;
  final ValueChanged<List<String>> onChanged;

  const OnbMultiChoiceWidget({
    super.key,
    required this.question,
    required this.options,
    required this.selectedKeys,
    required this.maxSelection,
    required this.onChanged,
  });

  @override
  State<OnbMultiChoiceWidget> createState() => _OnbMultiChoiceWidgetState();
}

class _OnbMultiChoiceWidgetState extends State<OnbMultiChoiceWidget> {
  late List<String> _currentSelection;

  @override
  void initState() {
    super.initState();
    _currentSelection = List.from(widget.selectedKeys);
  }

  void _toggle(String key) {
    setState(() {
      if (_currentSelection.contains(key)) {
        _currentSelection.remove(key);
      } else {
        if (_currentSelection.length < widget.maxSelection) {
          _currentSelection.add(key);
        } else {
          // Replace last? Or ignore? Let's ignore/show snackbar.
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Select up to ${widget.maxSelection} only')),
          );
          return;
        }
      }
      widget.onChanged(_currentSelection);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(widget.question, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: widget.options.map((opt) {
            final isSelected = _currentSelection.contains(opt['key']);
            return ChoiceChip(
              label: Text(opt['label']!),
              selected: isSelected,
              onSelected: (_) => _toggle(opt['key']!),
            );
          }).toList(),
        ),
      ],
    );
  }
}
