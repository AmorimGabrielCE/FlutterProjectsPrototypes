// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import './result.dart';

class Questions extends StatefulWidget {
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final _questions = const [
    {
      'question': "What's Israel capital?",
      'answer1': 'Jerusalem',
      'answer2': 'Tel Aviv',
      'answer3': 'Ramla',
      'answer4': 'Acre',
      'ans1_score': 1,
      'ans2_score': 0,
      'ans3_score': 0,
      'ans4_score': 0,
      'image': 'assets/Israel.png'
    },
    {
      'question': "What's the best selling book in the world after the Bible?",
      'answer1': 'The Lord of The Rings',
      'answer2': 'The Little Prince',
      'answer3': 'A Tale of Two Cities',
      'answer4': 'Don Quixote',
      'ans1_score': 0,
      'ans2_score': 0,
      'ans3_score': 0,
      'ans4_score': 1,
      'image': 'assets/books.png'
    },
    {
      'question':
          "What's the time taken by the sunlight to reach the earth surface?",
      'answer1': '12 minutes',
      'answer2': '12 hours',
      'answer3': '8 minutes',
      'answer4': '8 hours',
      'ans1_score': 0,
      'ans2_score': 0,
      'ans3_score': 1,
      'ans4_score': 0,
      'image': 'assets/sun.png'
    },
    {
      'question': "What is the largest land animal in the world?",
      'answer1': 'Blue Whale',
      'answer2': 'African Elephant',
      'answer3': 'Great White Shark',
      'answer4': 'Giraffe',
      'ans1_score': 0,
      'ans2_score': 1,
      'ans3_score': 0,
      'ans4_score': 0,
      'image': 'assets/animals.png'
    },
    {
      'question': "What metal has the chemical symbol Au?",
      'answer1': 'Copper',
      'answer2': 'Silver',
      'answer3': 'Gold',
      'answer4': 'Mercury',
      'ans1_score': 0,
      'ans2_score': 0,
      'ans3_score': 1,
      'ans4_score': 0,
      'image': 'assets/metals.png'
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
    return _questionIndex < _questions.length
        ? LayoutBuilder(
            builder: (_, constraints) {
              var sizeWidth = constraints.maxWidth;
              var sizeHeight = constraints.maxHeight;

              return ListView(children: [
                Image.asset(
                  _questions[_questionIndex]['image'],
                  height: sizeHeight * .35,
                ),
                Material(
                  child: Container(
                    child: Text(
                      _questions[_questionIndex]['question'] as String,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                    width: double.infinity,
                    alignment: Alignment.center,
                    color: Colors.red,
                    margin: EdgeInsets.only(bottom: sizeHeight * .025),
                    height: 65,
                  ),
                ),
                InkWell(
                  child: Container(
                    child: Text(
                      _questions[_questionIndex]['answer1'] as String,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    width: double.infinity,
                    height: sizeHeight * .1,
                    color: Colors.red,
                    margin: EdgeInsets.only(
                        bottom: sizeHeight * .025,
                        right: sizeWidth * .05,
                        left: sizeWidth * .05),
                    alignment: Alignment.center,
                  ),
                  onTap: () =>
                      _answerQuestion(_questions[_questionIndex]['ans1_score']),
                ),
                InkWell(
                  child: Container(
                    child: Text(
                      _questions[_questionIndex]['answer2'] as String,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    width: double.infinity,
                    height: sizeHeight * .1,
                    color: Colors.red,
                    margin: EdgeInsets.only(
                        bottom: sizeHeight * .025,
                        right: sizeWidth * .05,
                        left: sizeWidth * .05),
                    alignment: Alignment.center,
                  ),
                  onTap: () =>
                      _answerQuestion(_questions[_questionIndex]['ans2_score']),
                ),
                InkWell(
                  child: Container(
                    child: Text(
                      _questions[_questionIndex]['answer3'] as String,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    width: double.infinity,
                    height: sizeHeight * .1,
                    color: Colors.red,
                    margin: EdgeInsets.only(
                        bottom: sizeHeight * .025,
                        right: sizeWidth * .05,
                        left: sizeWidth * .05),
                    alignment: Alignment.center,
                  ),
                  onTap: () =>
                      _answerQuestion(_questions[_questionIndex]['ans3_score']),
                ),
                InkWell(
                  child: Container(
                    child: Text(
                      _questions[_questionIndex]['answer4'] as String,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    width: double.infinity,
                    height: sizeHeight * .1,
                    color: Colors.red,
                    margin: EdgeInsets.only(
                        bottom: sizeHeight * .025,
                        right: sizeWidth * .05,
                        left: sizeWidth * .05),
                    alignment: Alignment.center,
                  ),
                  onTap: () =>
                      _answerQuestion(_questions[_questionIndex]['ans4_score']),
                )
              ]);
            },
          )
        : Result(_totalScore, _resetQuiz, _questions.length);
  }
}
