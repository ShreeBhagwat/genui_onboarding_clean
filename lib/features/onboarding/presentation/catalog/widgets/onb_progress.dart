import 'package:flutter/material.dart';

class OnbProgressWidget extends StatelessWidget {
  final int step;
  final int total;

  const OnbProgressWidget({super.key, required this.step, required this.total});

  @override
  Widget build(BuildContext context) {
    // 0-based progress? Prompt stepIndex seems 1-based.
    final double value = (step / total).clamp(0.0, 1.0);
    return LinearProgressIndicator(
      value: value,
      backgroundColor: Colors.grey[200],
      valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
    );
  }
}
