import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  final int questions;

  Result(this.resultScore, this.resetHandler, this.questions);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Text(
              'Your score is: $resultScore/$questions',
              style: TextStyle(fontSize: 28),
            ),
            margin: EdgeInsets.only(top: 200),
          ),
          InkWell(
            child: Container(
              child: const Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 28.0, color: Colors.white),
              ),
              width: double.infinity,
              color: Colors.green,
              margin: EdgeInsetsDirectional.all(50),
              alignment: Alignment.center,
            ),
            onTap: resetHandler,
          )
        ],
      ),
    );
  }
}
