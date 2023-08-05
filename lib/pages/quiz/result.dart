import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore; // Result of the Quiz
  final Function resetHandler; // Reset the Quiz

  // The constructor for the Widget Class
  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  // The Main CLass Widget
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You scored: $resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () => resetHandler(), 
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
