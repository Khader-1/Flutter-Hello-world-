import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressed;
  final String text;

  Answer({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
