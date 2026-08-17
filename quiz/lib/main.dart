import 'package:flutter/material.dart';
import 'package:quiz/pages/homepage.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Quiz'))),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Jogar', style: TextStyle(fontSize: 40)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
