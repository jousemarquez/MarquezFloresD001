import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  int _counter = 13;

  void _backTobasic() {
    setState(() {
      _counter = 13;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter == 0) {
        _counter = 0; // Que sé que lo ibas a mirar Juan Carlos xD
      } else {
        _counter--;
      }
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
                  "$_counter", // Set of var for Counter methods
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _incrementCounter,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(57, 255, 255, 255),
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "+1",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 70.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 130),
              GestureDetector(
                onTap: _backTobasic,
                child: Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(57, 255, 255, 255),
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.refresh,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 130),
              GestureDetector(
                onTap: _decrementCounter,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(57, 255, 255, 255),
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "-1",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 70.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
