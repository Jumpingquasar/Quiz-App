import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/models/quiz_question_model.dart';
import 'package:quiz_app/widgets/question_card.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.results});
  final List<QuizAnswer> results;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: results
            .map((e) => QuestionCard(
                  question: questions[e.key].question,
                  correctAnswer: questions[e.key].answers.where((element) => element.isCorrect == true).toList(),
                  userAnswer: e,
                ))
            .toList(),
      ),
    );
  }
}
