import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;

  Answer(this._answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_answer),
      ),
    );
  }
}
