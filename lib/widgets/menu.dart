import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Home',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Text(
          'Widgets',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Text(
          'About Us',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Icon(
          Icons.search,
          color: Color(0xFF626262),
          size: 40,
        ),
      ],
    );
  }
}
