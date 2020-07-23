import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function _clickListener;

  Answer(this._answer, this._clickListener);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_answer),
        onPressed: _clickListener,
      ),
    );
  }
}
