import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/models/quiz_question_model.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.changeScreen, required this.chooseAnswer});
  final void Function(String) changeScreen;
  final void Function(QuizAnswer) chooseAnswer;
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  late int activeQuestion = 0;

  void selectAnswer(QuizAnswer answer) {
    widget.chooseAnswer(answer);
    if (questions.length != activeQuestion + 1) {
      setState(() {
        activeQuestion++;
      });
    } else {
      widget.changeScreen('results-screen');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(questions[activeQuestion].question, style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: questions[activeQuestion]
                  .getShuffledAnswers()
                  .map((e) => ElevatedButton(
                      onPressed: () {
                        selectAnswer(e);
                      },
                      child: Text(e.answer, style: GoogleFonts.lato())))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
