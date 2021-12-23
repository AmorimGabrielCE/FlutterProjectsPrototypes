import 'package:flutter/material.dart';

class Styles extends StatelessWidget {
  final String content;

  Styles(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 70,
      height: 70,
      child: Center(
        child: Text(
          content,
          style: TextStyle(fontSize: 48),
        ),
      ),
    );
  }
}
