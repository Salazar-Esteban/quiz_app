import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/styled_text.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    required this.questionTitle,
    required this.answer,
    required this.currentAnswer,
    required this.isRight,
    super.key,
  });
  final String questionTitle;
  final String answer;
  final bool isRight;
  final String currentAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(color: Colors.black12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              StyledHeader(
                questionTitle,
                size: 24,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: StyledText(
                  'Right: $answer',
                  size: 12,
                  color: const Color.fromARGB(224, 134, 255, 136),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              currentAnswer != answer
                  ? SizedBox(
                      width: 200,
                      child: StyledText(
                        'Your answer: $currentAnswer',
                        size: 12,
                        color: Colors.orangeAccent,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          Icon(isRight ? Icons.check_circle_outline : Icons.error_outline_sharp,
              color: isRight ? Colors.greenAccent : Colors.orangeAccent),
        ],
      ),
    );
  }
}
