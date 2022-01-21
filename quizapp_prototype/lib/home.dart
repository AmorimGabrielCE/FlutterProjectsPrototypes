import 'package:flutter/material.dart';
import './questions.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int startState = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      var sizeWidth = constraints.maxWidth;
      var sizeHeight = constraints.maxHeight;
      String welcomeText = 'Welcome to Quiz App!';

      return startState == 0
          ? Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Center(
                    child: Text(
                      welcomeText,
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  InkWell(
                      child: Container(
                        child: Text(
                          'Start',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                        color: Colors.red,
                        alignment: Alignment.center,
                        height: sizeHeight * .05,
                        margin: EdgeInsetsDirectional.only(
                            top: sizeHeight * .05,
                            start: sizeWidth * .25,
                            end: sizeWidth * 0.25),
                      ),
                      onTap: () {
                        setState(() {
                          startState = 1;
                        });
                      })
                ],
              ),
            )
          : Questions();
    });
  }
}
