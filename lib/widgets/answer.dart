import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;

  Answer(this._answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        child: Text(_answer),
      ),
    );
  }
}
