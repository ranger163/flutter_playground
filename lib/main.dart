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
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Green', 'Blue', 'Red', 'Black']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Lion', 'Cat', 'Dog', 'Rabbit']
    },
    {
      'questionText': 'who\'s your favourite developer?',
      'answers': ['Nassar', 'Nassar', 'Nassar', 'Nassar']
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
            : Result(),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
}
