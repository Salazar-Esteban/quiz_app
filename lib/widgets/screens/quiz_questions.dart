import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_questions.dart';
import 'package:quiz_app/widgets/styled_text.dart';

final finalPage = questions.length - 1;
const initialPage = 0;

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});

  @override
  State<QuizQuestions> createState() => _QuizQuestionsState();
}

class _QuizQuestionsState extends State<QuizQuestions> {
  List<int>? answers = [];
  int currentQuestionIndex = initialPage;

  void onAnswerQuestion(int answerID) {
    if (currentQuestionIndex < finalPage) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      setState(() {
        currentQuestionIndex = 0;
      });
    }
    saveAnswer(answerID);
  }

  void saveAnswer(int answerID) {
    if (!answerID.isNaN) {
      setState(
        () {
          answers!.add(answerID);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    print('answer $answers');
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StyledText(
            currentQuestion.question,
            size: 26,
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnswerButton(
                  answer.title,
                  () => onAnswerQuestion(answer.id),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.onTap, {super.key});
  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(15),
        side: const BorderSide(
          color: Color.fromARGB(137, 255, 255, 255),
        ),
      ),
      child: StyledText(
        text,
        size: 14,
      ),
    );
  }
}
