import 'package:flutter/material.dart';

class OnbSpacerWidget extends StatelessWidget {
  final double size;

  const OnbSpacerWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}
