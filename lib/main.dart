import 'package:flutter/material.dart';
import 'package:testapp/answer.dart';
import 'package:testapp/question.dart';
import 'package:testapp/quiz.dart';
import 'package:testapp/result.dart';

main() => runApp(TestApp());

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<TestApp> {
  var _index = 0;
  var _score = 0;

  void _answer(score) {
    _score += score;
    setState(() {
      _index++;
    });
  }

  void _reset() {
    _score = 0;
    setState(() {
      _index = 0;
    });
  }

  static const questions = [
    {
      'question': 'What is your name ??',
      'answers': [
        {
          'text': 'Khader',
          'score': 5,
        },
        {
          'text': 'Khader',
          'score': 4,
        },
        {
          'text': 'Khader',
          'score': 3,
        },
        {
          'text': 'Khader',
          'score': 2,
        },
      ],
    },
    {
      'question': 'What is your name 2??',
      'answers': [
        {
          'text': 'Khader',
          'score': 5,
        },
        {
          'text': 'Khader',
          'score': 4,
        },
        {
          'text': 'Khader',
          'score': 3,
        },
        {
          'text': 'Khader',
          'score': 2,
        },
      ],
    },
    {
      'question': 'What is your name 3??',
      'answers': [
        {
          'text': 'Khader',
          'score': 5,
        },
        {
          'text': 'Khader',
          'score': 4,
        },
        {
          'text': 'Khader',
          'score': 3,
        },
        {
          'text': 'Khader',
          'score': 2,
        },
      ],
    },
    {
      'question': 'What is your name 4??',
      'answers': [
        {
          'text': 'Khader',
          'score': 5,
        },
        {
          'text': 'Khader',
          'score': 4,
        },
        {
          'text': 'Khader',
          'score': 3,
        },
        {
          'text': 'Khader',
          'score': 2,
        },
      ],
    },
    {
      'question': 'What is your name 5??',
      'answers': [
        {
          'text': 'Khader',
          'score': 5,
        },
        {
          'text': 'Khader',
          'score': 4,
        },
        {
          'text': 'Khader',
          'score': 3,
        },
        {
          'text': 'Khader',
          'score': 2,
        },
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('khader'),
      ),
      body: _index < questions.length
          ? Quiz(questions[_index], _answer)
          : Result(_score, _reset),
    ));
  }
}
