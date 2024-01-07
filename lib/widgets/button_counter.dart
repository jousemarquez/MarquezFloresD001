import 'package:flutter/material.dart';

class ButtonCounter extends StatelessWidget {
  const ButtonCounter({
    Key? key,
    required this.onPressed,
    this.text,
    required this.isButton,
    required this.size,
    this.rotation = 0,
    this.padding = 0, // Nueva propiedad para el padding
  }) : super(key: key);

  final VoidCallback onPressed;
  final String? text;
  final bool isButton;
  final double size;
  final double rotation;
  final double padding; // Propiedad para el padding

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size / 2),
            color: const Color.fromARGB(52, 255, 255, 255),
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: Center(
            child: Transform.rotate(
              angle: rotation * (3.1415926535897932 / 180),
              child: Text(
                text ?? '', // Si es nulo, se establece como una cadena vacía
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size * 0.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
