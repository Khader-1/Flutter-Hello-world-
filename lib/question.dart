import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _text;

  Question(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(50),
        child: Text(
          _text,
          style: TextStyle(
            fontFamily: 'sans-serif',
            fontSize: 28,
          ),
        ));
  }
}
