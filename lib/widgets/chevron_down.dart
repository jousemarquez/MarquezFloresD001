import 'package:flutter/cupertino.dart';

class ChevronDown extends StatelessWidget {
  const ChevronDown({super.key});
  @override
  Widget build(BuildContext context) {
    return CenteredContainer(
      child: CupertinoButton(
        onPressed: () {
          //Navigator.pushNamed(context, '/counter');
        },
        padding: EdgeInsets.zero,
        child: Icon(
          CupertinoIcons.chevron_down,
          size: 40,
          color: Color(0xFF434343),
        ),
      ),
    );
  }
}

class CenteredContainer extends StatelessWidget {
  final Widget child;
  const CenteredContainer({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: child,
      ),
    );
  }
}
