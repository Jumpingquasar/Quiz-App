import 'package:quiz_app/models/quiz_question_model.dart';

const questions = [
  QuizQuestion(
      question: 'Question 1',
      answers: [
        QuizAnswer(answer: 'False', isCorrect: false, key: 1),
        QuizAnswer(answer: 'False', isCorrect: false, key: 2),
        QuizAnswer(answer: 'True', isCorrect: true, key: 3),
        QuizAnswer(answer: 'False', isCorrect: false, key: 4),
      ],
      key: 1),
  QuizQuestion(
      question: 'Question 2',
      answers: [
        QuizAnswer(answer: 'True', isCorrect: true, key: 1),
        QuizAnswer(answer: 'False', isCorrect: false, key: 2),
        QuizAnswer(answer: 'False', isCorrect: false, key: 3),
        QuizAnswer(answer: 'False', isCorrect: false, key: 4),
      ],
      key: 2),
  QuizQuestion(
      question: 'Question 3',
      answers: [
        QuizAnswer(answer: 'False', isCorrect: false, key: 1),
        QuizAnswer(answer: 'False', isCorrect: false, key: 2),
        QuizAnswer(answer: 'False', isCorrect: false, key: 3),
        QuizAnswer(answer: 'True', isCorrect: true, key: 4),
      ],
      key: 3),
  QuizQuestion(
      question: 'Question 4',
      answers: [
        QuizAnswer(answer: 'False', isCorrect: false, key: 1),
        QuizAnswer(answer: 'True', isCorrect: true, key: 2),
        QuizAnswer(answer: 'False', isCorrect: false, key: 3),
        QuizAnswer(answer: 'False', isCorrect: false, key: 4),
      ],
      key: 4),
];
