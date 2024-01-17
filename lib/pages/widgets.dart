import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/widget_card.dart';

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About Me',
      home: Scaffold(
        body: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString('assets/sample.json'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = json.decode(snapshot.data!);
              var widgets = data['widgets'] as List<dynamic>;

              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: widgets.length,
                itemBuilder: (context, index) {
                  var widgetInfo = widgets[index];
                  return WidgetCard(
                    widgetInfo['nombre'],
                    widgetInfo['descripcion'],
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error al cargar datos'),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
