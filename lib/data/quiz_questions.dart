import 'package:quiz_app/models/quiz_answer.dart';
import 'package:quiz_app/models/quiz_question.dart';

const firstOkAnswerID = 22;
const secondOkAnswerID = 55;
const thirdOkAnswerID = 33;

const List<QuizQuestion> questions = [
  QuizQuestion(
    question: 'What is javascript ?',
    id: 1,
    correctAnswerID: firstOkAnswerID,
    answers: [
      Answer(11, "A framework for web development"),
      Answer(55, "A programming language, focus on web development"),
      Answer(33, "A design system")
    ],
  ),
  QuizQuestion(
    question: 'What is ReactJs ?',
    id: 2,
    correctAnswerID: secondOkAnswerID,
    answers: [
      Answer(11, "A framework for create user interfaces"),
      Answer(22, "A library for create user interface"),
      Answer(33, "A library for create backends system")
    ],
  ),
  QuizQuestion(
    question: 'What is zustand ?',
    id: 3,
    correctAnswerID: thirdOkAnswerID,
    answers: [
      Answer(11, "A design system"),
      Answer(22, "A library for handle side effects"),
      Answer(33, "A state management library based on flux pattern")
    ],
  ),
];
