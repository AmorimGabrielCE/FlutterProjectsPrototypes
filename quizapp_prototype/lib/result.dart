import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Text(
              'Your score is: $resultScore',
              style: TextStyle(fontSize: 28),
            ),
            margin: EdgeInsets.only(top: 200),
          ),
          Container(
            child: InkWell(
              child: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              onTap: resetHandler,
            ),
            width: double.infinity,
            color: Colors.green,
            margin: EdgeInsetsDirectional.all(50),
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
