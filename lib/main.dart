import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/nav.dart';
import 'package:proyecto01/widgets/intro.dart';
import 'package:proyecto01/widgets/chevron_down.dart';
import 'package:proyecto01/widgets/counter.dart';
import 'package:proyecto01/pages/about.dart';
import 'package:proyecto01/pages/home.dart';
import 'package:proyecto01/pages/widgets.dart';

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
      initialRoute: '/home',
      routes: {
        '/home': (_) => const Home(),
        '/widgets': (_) => const Widgets(),
        '/about': (_) => const AboutMe(),
      },
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
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
