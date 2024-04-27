import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_question_model.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.question, required this.correctAnswer, required this.userAnswer});
  final String question;
  final QuizAnswer userAnswer;
  final List<QuizAnswer> correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        width: 350,
        decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 1), borderRadius: BorderRadius.circular(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(question),
            const Divider(),
            Text(userAnswer.answer),
            Text(correctAnswer[0].answer),
          ],
        ),
      ),
    );
  }
}
