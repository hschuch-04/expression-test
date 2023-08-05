import 'package:flutter/material.dart';

// The Main Class Widget for Answer
class Answer extends StatelessWidget {
  final Function selectHandler;
  final int score;
  final String answerText;

  // Constructor
  const Answer(this.selectHandler, this.score, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
        child: ElevatedButton(
          onPressed: () => selectHandler(score),
          style: ButtonStyle(
              textStyle:
                  MaterialStateProperty.all(const TextStyle(color: Colors.white)),
              backgroundColor: MaterialStateProperty.all(Colors.blue[900])),
          child: Text(answerText),
        ),
    );
  }
}
