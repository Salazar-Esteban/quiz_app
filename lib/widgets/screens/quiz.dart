import 'package:flutter/material.dart';
import 'package:quiz_app/colors/index.dart';
import 'package:quiz_app/widgets/background_cont.dart';
import 'package:quiz_app/widgets/screens/quiz_questions.dart';
import 'package:quiz_app/widgets/screens/quiz_start.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = "start_screen";

  void startQuiz() {
    setState(() {
      activeScreen = "questions_screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeWidget = activeScreen == "start-screen"
        ? StartScreen(startQuiz)
        : const QuizQuestions();
    return MaterialApp(
        home: Scaffold(
      body: BackgroundContainer(
        activeWidget,
        purpleGradient,
      ),
    ));
  }
}
