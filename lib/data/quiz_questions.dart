import 'package:quiz_app/models/quiz_answer.dart';
import 'package:quiz_app/models/quiz_question.dart';

const firstOkAnswerID = 8899;
const secondOkAnswerID = 4455;
const thirdOkAnswerID = 985412;
const fourOkAnswerID = 00220088;
const fiveOkAnswerID = 99333333232323232;
const sixOkAnswerID = 9283928398232;
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
    title: 'What is Nextjs ?',
    id: 3,
    correctAnswerID: thirdOkAnswerID,
    answers: [
      Answer(thirdOkAnswerID, "A framework based on reactjs"),
      Answer(24343, "A library based on reactjs"),
    ],
  ),
  QuizQuestion(
    title: 'What is Html ?',
    id: 3,
    correctAnswerID: fourOkAnswerID,
    answers: [
      Answer(fourOkAnswerID, "A hyper-text language"),
      Answer(22, "A programming language"),
    ],
  ),
  QuizQuestion(
    title: 'What is zustand ?',
    id: 3,
    correctAnswerID: fiveOkAnswerID,
    answers: [
      Answer(11, "A design system"),
      Answer(22, "A library for handleling side effects"),
      Answer(fiveOkAnswerID, "A state management library based on flux pattern")
    ],
  ),
  QuizQuestion(
    title: 'What is zustand ?',
    id: 3,
    correctAnswerID: sixOkAnswerID,
    answers: [
      Answer(11, "A design system"),
      Answer(22, "A library for handleling side effects"),
      Answer(sixOkAnswerID, "A state management library based on flux pattern")
    ],
  ),
];
