import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: const Text(
        'View Course',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(206, 255, 255, 255),
            fontSize: 20),
      ),
    );
  }
}
