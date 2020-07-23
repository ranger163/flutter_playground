import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/answer.dart';

import './widgets/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello!'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer('Answer 1'),
            Answer('Answer 2'),
            Answer('Answer 3'),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }
}
