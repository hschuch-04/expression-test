import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lie_test/pages/quiz/quiz_page.dart';
import 'package:lie_test/pages/reusable/button.dart';
import 'package:lie_test/pages/reusable/sidebar.dart';
import 'package:lie_test/pages/about.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/quiz': (context) => QuizPage(),
      '/about': (context) => About(),
    },
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// The Home Page Widget
class _HomeState extends State<Home> {
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
        body: Stack(
          children: <Widget>[
            // The Background Image/Styling
            Container(
              color: Colors.grey[400],
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0))),
              ),
            ),
            // The Buttons/Interactables
            Center(
              child: Button(
                  buttonText: 'Start Quiz',
                  onPressed: () => Navigator.pushNamed(context, '/quiz'),
                  height: 75,
                  width: 200,
                  color: Colors.blue[900] as Color),
            )
          ],
        ),
      );
  }
}
