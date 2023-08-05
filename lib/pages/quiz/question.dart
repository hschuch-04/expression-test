import 'package:flutter/material.dart';

// The Class Widget for Question
class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Image.asset('assets/expressions/$questionText'),
    );
  }
}
