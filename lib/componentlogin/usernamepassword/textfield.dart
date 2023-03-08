import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      width: 330,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: child,
    );
  }
}
