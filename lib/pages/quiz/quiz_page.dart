import 'package:flutter/material.dart';
import 'package:lie_test/functions/list.dart';
import 'package:lie_test/pages/quiz/result.dart';
import 'package:lie_test/pages/quiz/quiz.dart';
import 'package:lie_test/pages/reusable/sidebar.dart';

// Setup for Widget
class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

// The Widget Render Class
class _QuizPageState extends State<QuizPage> {
  final _questions = QuizList.questions;
  int _questionIndex = 0;
  int _totalScore = 0;

  // The Reset Function
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // Adds the score, and updates the question
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text('The Expression Test'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
            child: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex
                  )
                : Result(_totalScore, _resetQuiz)),
      ),
    );
  }
}
