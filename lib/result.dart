import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _score;
  final _reset;

  Result(this._score, this._reset);

  String get text {
    if (_score < 15) return '1';
    if (_score < 20) return '2';
    if (_score < 30) return '3';
    if (_score < 40) return '4';
    if (_score < 50) return '5';
    return '';
  }

  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: <Widget>[
            Text('You nailed it'),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
            FlatButton(onPressed: _reset, child: Text('reset'))
          ],
        ));
  }
}
