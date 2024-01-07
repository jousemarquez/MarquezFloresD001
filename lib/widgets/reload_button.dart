import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/button_counter.dart';

class ReloadButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ReloadButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonCounter(
      onPressed: onPressed,
      text: "\u21BB", // Unicode del símbolo de recarga (reload)
      isButton: true,
      size: 60,
      rotation: 90,
    );
  }
}
