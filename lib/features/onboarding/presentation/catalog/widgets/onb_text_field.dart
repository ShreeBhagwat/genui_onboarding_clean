import 'package:flutter/material.dart';

class OnbTextFieldWidget extends StatelessWidget {
  final String label;
  final String hint;
  final String? initialValue;
  final ValueChanged<String> onChanged;
  final TextInputType? keyboardType;

  const OnbTextFieldWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.onChanged,
    this.initialValue,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
      ),
      keyboardType: keyboardType,
      onChanged: onChanged,
    );
  }
}
