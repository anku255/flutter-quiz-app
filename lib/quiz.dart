import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

enum Screens { startScreen, questionsScreen, resultScreen }

class _QuizState extends State<Quiz> {
  Screens activeScreen = Screens.startScreen;
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = Screens.questionsScreen;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = Screens.resultScreen;
      });
    }
  }

  void resetAnswers() {
    setState(() {
      selectedAnswers = [];
      activeScreen = Screens.startScreen;
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
              : activeScreen == Screens.questionsScreen
                  ? QuestionsScreen(
                      onSelectAnswer: chooseAnswer,
                    )
                  : ResultScreen(
                      chosenAnswers: selectedAnswers,
                      onRestart: resetAnswers,
                    ),
        ),
      ),
    );
  }
}
