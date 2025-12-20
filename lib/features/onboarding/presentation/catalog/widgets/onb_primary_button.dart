import 'package:flutter/material.dart';

class OnbPrimaryButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const OnbPrimaryButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      child: Text(text),
    );
  }
}
