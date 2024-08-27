import "package:flutter/material.dart";

const logoPath = 'assets/images/quiz-logo.png';

class QuizLogo extends StatelessWidget {
  const QuizLogo(
      {super.key,
      this.size = 200,
      this.color = const Color.fromARGB(155, 255, 255, 255)});
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoPath,
      height: size,
      width: size,
      color: color,
    );
  }
}
