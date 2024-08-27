import 'package:quiz_app/models/quiz_answer.dart';
import 'package:quiz_app/models/quiz_question.dart';

const firstOkAnswerID = 8899;
const secondOkAnswerID = 4455;
const thirdOkAnswerID = 985412;

const List<QuizQuestion> questions = [
  QuizQuestion(
    title: 'What is javascript ?',
    id: 1,
    correctAnswerID: firstOkAnswerID,
    answers: [
      Answer(11, "A framework for web development"),
      Answer(
          firstOkAnswerID, "A programming language, focus on web development"),
      Answer(33, "A design system")
    ],
  ),
  QuizQuestion(
    title: 'What is ReactJs ?',
    id: 2,
    correctAnswerID: secondOkAnswerID,
    answers: [
      Answer(11, "A content management system"),
      Answer(secondOkAnswerID, "A library for creating user interfaces"),
      Answer(33, "A library for creating backend systems")
    ],
  ),
  QuizQuestion(
    title: 'What is zustand ?',
    id: 3,
    correctAnswerID: thirdOkAnswerID,
    answers: [
      Answer(11, "A design system"),
      Answer(22, "A library for handleling side effects"),
      Answer(
          thirdOkAnswerID, "A state management library based on flux pattern")
    ],
  ),
];
