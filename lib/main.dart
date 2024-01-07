import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/nav.dart';
import 'package:proyecto01/widgets/intro.dart';
import 'package:proyecto01/widgets/chevron_down.dart';
import 'package:proyecto01/widgets/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Práctica 1 & 2',
      /* routes: {
        '/counter': (context) => Counter(),
      }, */
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Nav(),
              Intro(),
              ChevronDown(),
              Counter(),
            ],
          ),
        ),
      ),
    );
  }
}
