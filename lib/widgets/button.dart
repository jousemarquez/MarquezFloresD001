import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 250,
      height: 70,
      decoration: const BoxDecoration(
        color: Color(0xFF68B7F7),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: const Text(
        'Contador',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(206, 255, 255, 255),
            fontSize: 20),
      ),
    );
  }
}
