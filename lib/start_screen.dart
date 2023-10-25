import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz, super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          const SizedBox(height: 40),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 12, bottom: 12),
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz"))
        ],
      ),
    );
  }
}
