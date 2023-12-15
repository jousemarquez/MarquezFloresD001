import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/intro.dart';
import 'package:proyecto01/widgets/nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Práctica 1',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Nav(),
              Intro(),
            ],
          ),
        ),
      ),
    );
  }
}
