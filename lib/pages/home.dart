import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/nav.dart';
import 'package:proyecto01/widgets/intro.dart';
import 'package:proyecto01/widgets/chevron_down.dart';
import 'package:proyecto01/widgets/counter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
