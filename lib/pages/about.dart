import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('../assets/img/jouse.jpg')),
              Text(
                'Jouse Márquez',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF68B7F7),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Front End Developer',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    letterSpacing: 2.5,
                    color: Color(0xFF68B7F7),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Color(0xFF68B7F7),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Color(0xFF68B7F7),
                  ),
                  title: Text(
                    '+34 666-666-666',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF68B7F7),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Color(0xFF68B7F7),
                  ),
                  title: Text(
                    'joseantonio.marquez@a.vedrunasevillasj.es',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF68B7F7),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
