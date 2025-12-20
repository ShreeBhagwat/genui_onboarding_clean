import 'package:flutter/material.dart';

class OnbSecondaryButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const OnbSecondaryButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(minimumSize: const Size.fromHeight(40)),
      child: Text(text),
    );
  }
}
