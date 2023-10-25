import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

enum Screens { startScreen, questionsScreen }

class _QuizState extends State<Quiz> {
  Screens activeScreen = Screens.startScreen;

  void switchScreen() {
    setState(() {
      activeScreen = Screens.questionsScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.deepPurple),
          child: activeScreen == Screens.startScreen
              ? StartScreen(startQuiz: switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
