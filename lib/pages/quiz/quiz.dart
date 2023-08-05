import 'package:flutter/material.dart';
import 'package:lie_test/pages/quiz/question.dart';
import 'package:lie_test/pages/quiz/answer.dart';

// The Class Widget for Quiz
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Question(
              questions[questionIndex]['image'].toString(),
            ),
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(answerQuestion, answer['score'] as int,
                answer['text'].toString());
          }).toList()
        ],
      ),
    );
  }
}
