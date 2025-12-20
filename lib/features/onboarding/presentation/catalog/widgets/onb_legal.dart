import 'package:flutter/material.dart';

class OnbLegalWidget extends StatelessWidget {
  final String text;

  const OnbLegalWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(
        context,
      ).textTheme.bodySmall?.copyWith(color: Colors.grey),
      textAlign: TextAlign.center,
    );
  }
}
