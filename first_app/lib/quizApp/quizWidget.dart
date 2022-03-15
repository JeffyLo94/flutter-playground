import 'package:flutter/material.dart';

import './questionWidget.dart';
import './answerWidget.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget(this.questions, this.questionInd, { Key? key, required this.answerQuestion }) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionInd;
  final Function answerQuestion;


  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Question(
                  questions[questionInd]['questionText'] as String,
                ),
                ...(questions[questionInd]['answers'] as List<Map<String, Object>>)
                    .map((answer) {
                  return AnswerWidget( answer['text'] as String, () => answerQuestion(answer['score']));
                }).toList()
              ],
            );
  }
}