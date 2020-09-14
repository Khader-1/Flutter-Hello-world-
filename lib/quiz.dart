import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function _answer;
  final _question;

  Quiz(this._question, this._answer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_question['question']),
        ...(_question['answers'] as List<Map<String, Object>>)
            .map((e) =>
                Answer(onPressed: () => _answer(e['score']), text: e['text']))
            .toList(),
      ],
    );
  }
}
