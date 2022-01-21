import 'package:flutter/material.dart';

class StylesNumbers extends StatelessWidget {
  final String content;
  final double buttonWidth;
  final double buttonHeight;

  StylesNumbers(this.content, this.buttonWidth, this.buttonHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
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
  final double buttonWidth;
  final double buttonHeight;

  StylesOthers(this.content, this.buttonWidth, this.buttonHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      child: Center(
        child: Text(
          content,
          style: TextStyle(fontSize: 48, color: Colors.blue),
        ),
      ),
    );
  }
}
