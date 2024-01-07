import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/button.dart';
import 'package:proyecto01/widgets/description.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 240,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Description(), SizedBox(), Button()],
        ),
      ),
    );
  }
}
