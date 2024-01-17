import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  final String nombre;
  final String descripcion;

  const WidgetCard(this.nombre, this.descripcion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(size: 42.0),
          SizedBox(height: 8.0),
          Text(
            nombre,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(descripcion),
        ],
      ),
    );
  }
}
