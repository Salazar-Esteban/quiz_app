import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz_logo.dart';
import 'package:quiz_app/widgets/styled_text.dart';
class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const QuizLogo(),
        const SizedBox(
          height: 50,
        ),
        const StyledText(
          'Flutter Quiz App',
          size: 18,
        ),
        const SizedBox(height: 10),
        ElevatedButton.icon(
          onPressed: startQuiz,
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.deepPurpleAccent,
          ),
          label: const StyledText(
            'Start Quiz',
          ),
          icon: const Icon(
            Icons.arrow_right_alt_rounded,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
