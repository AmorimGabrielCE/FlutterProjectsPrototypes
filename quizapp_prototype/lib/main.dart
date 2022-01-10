import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s Israel capital?',
      'answer1': 'Jerusalem',
      'answer2': 'Tel Aviv',
      'answer3': 'Ramla',
      'answer4': 'Acre'
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void ResetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      print("Answer chosen!");
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Image.asset('assets/Israel.jpg'),
            Container(
              child: Text(
                _questions[_questionIndex]['question'] as String,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.green,
              height: 50,
            ),
            Container(
              child: InkWell(
                child: Text(
                  _questions[_questionIndex]['answer1'] as String,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              width: double.infinity,
              color: Colors.green,
              height: 45,
              margin: EdgeInsetsDirectional.all(10),
              alignment: Alignment.center,
            ),
            Container(
              child: InkWell(
                child: Text(
                  _questions[_questionIndex]['answer2'] as String,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              width: double.infinity,
              color: Colors.green,
              height: 45,
              margin: EdgeInsetsDirectional.all(10),
              alignment: Alignment.center,
            ),
            Container(
              child: InkWell(
                child: Text(
                  _questions[_questionIndex]['answer3'] as String,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              width: double.infinity,
              color: Colors.green,
              height: 45,
              margin: EdgeInsetsDirectional.all(10),
              alignment: Alignment.center,
            ),
            Container(
              child: InkWell(
                child: Text(
                  _questions[_questionIndex]['answer4'] as String,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              width: double.infinity,
              color: Colors.green,
              height: 45,
              margin: EdgeInsetsDirectional.all(10),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
