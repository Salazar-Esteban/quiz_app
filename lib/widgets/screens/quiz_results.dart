import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/widgets/result_card.dart';
import 'package:quiz_app/widgets/styled_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.answers,
    required this.restartQuiz,
  });
  final List<int> answers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getQuizStadistics(
      List<int> answers, List<QuizQuestion> questions) {
    final List<Map<String, Object>> quizStadistics = [];

    for (int i = 0; i < answers.length; i++) {
      var question = questions[i];
      var correctAnswerTitle = question.answers
          .firstWhere((item) => item.id == question.correctAnswerID)
          .title;
      var userAnswerID = answers[i];
      var userAnswerData =
          questions[i].answers.firstWhere((item) => item.id == userAnswerID);
      quizStadistics.add({
        'question_index': i + 1,
        'question': question.title,
        'correctAnswerID': question.correctAnswerID,
        'correctAnswerTitle': correctAnswerTitle,
        'userAnswerID': userAnswerID,
        'userAnswerTitle': userAnswerData.title,
        'isRight': question.correctAnswerID == userAnswerID
      });
    }
    return quizStadistics;
  }

  @override
  Widget build(BuildContext context) {
    var summary = getQuizStadistics(answers, questions);
    var totalOks = summary.where((item) => item['isRight'] == true).length;
    var totalQuestions = questions.length;
    print(summary[0]);
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        itemExtent: 190,
        children: [
          Center(
            child: StyledHeader(
              'You answered $totalOks out of $totalQuestions questions correctly!',
              size: 22,
            ),
          ),
          ...summary.map(
            (data) {
              return ResultCard(
                questionIndex: data['question_index'] as int,
                answer: data['correctAnswerTitle'] as String,
                currentAnswer: data['userAnswerTitle'] as String,
                isRight: data['isRight'] as bool,
                questionTitle: data['question'] as String,
              );
            },
          ),
          IconButton(
            onPressed: restartQuiz,
            icon: const Icon(Icons.settings_backup_restore_sharp),
            color: Colors.white,
            iconSize: 60,
          )
        ],
      ),
    );
  }
}
