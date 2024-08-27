import 'package:flutter/material.dart';
import 'package:quiz_app/colors/index.dart';
import 'package:quiz_app/data/quiz_questions.dart';
import 'package:quiz_app/widgets/background_cont.dart';
// Screens
import 'package:quiz_app/widgets/screens/quiz_questions.dart';
import 'package:quiz_app/widgets/screens/quiz_results.dart';
import 'package:quiz_app/widgets/screens/quiz_start.dart';

const startScreen = "start_screen";
const questionScreen = "questions_screen";
const resultScreen = "result_screen";

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = startScreen;
  List<int> answers = [];
  bool isFinished = false;

  void saveAnswer(int answerID) {
    answers.add(answerID);
    if (answers.length == questions.length) {
      setState(() {
        isFinished = true;
        activeScreen = resultScreen;
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = startScreen;
      isFinished != isFinished;
      answers = [];
    });
  }

  Widget displayScreen(String activeScreen) {
    final StartScreen startW = StartScreen(startQuiz);
    final QuizQuestions questionW = QuizQuestions(onSelectedAnswer: saveAnswer);
    final ResultScreen resultW = ResultScreen(
      answers: answers,
      restartQuiz: restartQuiz,
    );
    switch (activeScreen) {
      case startScreen:
        return startW;
      case questionScreen:
        return questionW;
      case resultScreen:
        return resultW;
      default:
        return startW;
    }
  }

  void startQuiz() {
    setState(() {
      activeScreen = questionScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(answers);

    return MaterialApp(
        home: Scaffold(
      body: BackgroundContainer(
        displayScreen(activeScreen),
        purpleGradient,
      ),
    ));
  }
}
