import 'package:flutter/material.dart';

import 'widgets/quiz.dart';
import 'widgets/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Green', 'score': 1},
        {'text': 'Blue', 'score': 12},
        {'text': 'Red', 'score': 13},
        {'text': 'Black', 'score': 14}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 15},
        {'text': 'Cat', 'score': 52},
        {'text': 'Dog', 'score': 25},
        {'text': 'Rabbit', 'score': 35}
      ]
    },
    {
      'questionText': 'who\'s your favourite developer?',
      'answers': [
        {'text': 'Nassar', 'score': 2},
        {'text': 'Nassar', 'score': 10},
        {'text': 'Nassar', 'score': 9},
        {'text': 'Nassar', 'score': 3}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
}
