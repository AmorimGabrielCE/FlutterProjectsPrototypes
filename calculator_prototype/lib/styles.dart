import 'package:flutter/material.dart';

class StylesNumbers extends StatelessWidget {
  final String content;

  StylesNumbers(this.content);

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

class StylesOthers extends StatelessWidget {
  final String content;

  StylesOthers(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 70,
      height: 70,
      child: Center(
        child: Text(
          content,
          style: TextStyle(fontSize: 48, color: Colors.blue),
        ),
      ),
    );
  }
}
