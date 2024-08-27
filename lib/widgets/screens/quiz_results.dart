import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_questions.dart';
import 'package:quiz_app/widgets/result_card.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.answers,
    required this.restartQuiz,
  });
  final List<int> answers;
  final void Function() restartQuiz;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...answers.map(
            (answerID) {
              var index = answers.indexOf(answerID);
              // Getting the current question object based on index
              var fitQuestion = questions[index];
              final rightAnswer = fitQuestion.correctAnswerID;
              final wrongAnswer = fitQuestion.answers
                  .firstWhere((answer) => answer.id == answerID)
                  .title;
              final fitAnswer = fitQuestion.answers.firstWhere(
                  (answer) => answer.id == fitQuestion.correctAnswerID);
              final isAnswerOk = answerID == rightAnswer;
              return ResultCard(
                answer: fitAnswer.title,
                currentAnswer: wrongAnswer,
                isRight: isAnswerOk,
                questionTitle: fitQuestion.title,
              );
            },
          ),
          IconButton(
            onPressed: restartQuiz,
            icon: const Icon(Icons.settings_backup_restore_sharp),
            color: Colors.orangeAccent,
            iconSize: 70,
          )
        ],
      ),
    );
  }
}
