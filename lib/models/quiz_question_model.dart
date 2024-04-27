class QuizQuestion {
  const QuizQuestion({required this.question, required this.answers, required this.key});
  final String question;
  final List<QuizAnswer> answers;
  final int key;

  List<QuizAnswer> getShuffledAnswers() {
    final answerList = List.of(answers);
    answerList.shuffle();
    return answerList;
  }
}

class QuizAnswer {
  const QuizAnswer({required this.answer, required this.isCorrect, required this.key});
  final String answer;
  final bool isCorrect;
  final int key;
}
