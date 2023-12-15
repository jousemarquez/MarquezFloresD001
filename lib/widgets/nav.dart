import 'package:flutter/material.dart';
import 'package:proyecto01/widgets/logo.dart';
import 'package:proyecto01/widgets/menu.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 45),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Logo(),
          SizedBox(),
          Menu(),
        ],
      ),
    );
  }
}
