import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_question_model.dart';
import 'package:quiz_app/pages/questions_screen.dart';
import 'package:quiz_app/pages/results_screen.dart';
import 'package:quiz_app/pages/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen;
  late List<QuizAnswer> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(changeScreen: (screen) {
      switchScreen(screen);
    });
  }

  void switchScreen(String screen) {
    switch (screen) {
      case 'questions-screen':
        setState(() {
          activeScreen = QuestionsScreen(changeScreen: (screen) {
            switchScreen(screen);
          }, chooseAnswer: (answer) {
            chooseAnswer(answer);
          });
        });
      case 'results-screen':
        setState(() {
          activeScreen = ResultsScreen(results: selectedAnswers);
        });
    }
  }

  void chooseAnswer(QuizAnswer answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.indigoAccent])),
        child: activeScreen,
      ),
    );
  }
}
