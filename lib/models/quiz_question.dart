import 'package:quiz_app/models/quiz_answer.dart';

class QuizQuestion {
  const QuizQuestion(
      {required this.question,
      required this.answers,
      required this.id,
      required this.correctAnswerID});

  final int id;
  final String question;
// Answer Related types
  final List<Answer> answers;
  final int correctAnswerID;

// Get shuffled answers - this is very useful for randomize the answers position
  List<Answer> getShuffledAnswers() {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
