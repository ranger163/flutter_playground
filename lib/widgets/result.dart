import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restBtnClickListener;

  Result(this.totalScore, this.restBtnClickListener);

  String get resultMessage {
    String finalResult;
    if (totalScore <= 8)
      finalResult = 'Too bad dude!';
    else if (totalScore <= 18)
      finalResult = 'Not bad dude!';
    else if (totalScore <= 80)
      finalResult = 'Hooray ya Mohamed';
    else
      finalResult = 'El3b ya Samak';
    return finalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultMessage,
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restBtnClickListener,
            child: Text('Restart quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
