import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/reload_button.dart';
import 'button_counter.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  int _counter = 0;

  void _backTobasic() {
    setState(() {
      _counter = 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter = _counter > 0 ? _counter - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color(0xFF68B7F7),
      ),
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 800,
              height: 450,
              child: Center(
                child: Transform.translate(
                  offset: Offset(0, -30), // Container offset
                  child: Text(
                    "$_counter",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 300,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ButtonCounter(
                onPressed: _incrementCounter,
                text: "+1",
                isButton: false,
                size: 70,
                padding: 90,
              ),
              ReloadButton(
                onPressed: _backTobasic,
              ),
              ButtonCounter(
                onPressed: _decrementCounter,
                text: "-1",
                isButton: false,
                size: 70,
                padding: 90,
              ),
            ])
          ]),
    );
  }
}
