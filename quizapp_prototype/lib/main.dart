import 'package:flutter/material.dart';
import './result.dart';

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
      'answer4': 'Acre',
      'ans1_score': 1,
      'ans2_score': 0,
      'ans3_score': 0,
      'ans4_score': 0,
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
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
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
            backgroundColor: Colors.green,
          ),
          body: _questionIndex < _questions.length
              ? Column(
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
                      margin: EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      child: InkWell(
                        child: Text(
                          _questions[_questionIndex]['answer1'] as String,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        onTap: () {
                          _answerQuestion(
                              _questions[_questionIndex]['ans1_score']);
                        },
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
                        onTap: () {
                          _answerQuestion(
                              _questions[_questionIndex]['ans2_score']);
                        },
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
                        onTap: () {
                          _answerQuestion(
                              _questions[_questionIndex]['ans3_score']);
                        },
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
                        onTap: () {
                          _answerQuestion(
                              _questions[_questionIndex]['ans4_score']);
                        },
                      ),
                      width: double.infinity,
                      color: Colors.green,
                      height: 45,
                      margin: EdgeInsetsDirectional.all(10),
                      alignment: Alignment.center,
                    ),
                  ],
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
