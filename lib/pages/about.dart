import 'package:flutter/material.dart';
import 'package:lie_test/pages/reusable/sidebar.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
    );
  }
}