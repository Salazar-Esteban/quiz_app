import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/styled_text.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    required this.questionTitle,
    required this.answer,
    required this.currentAnswer,
    required this.isRight,
    required this.questionIndex,
    super.key,
  });
  final String questionTitle;
  final String answer;
  final bool isRight;
  final String currentAnswer;
  final int questionIndex;
  @override
  Widget build(BuildContext context) {
    Color isRightColor = isRight ? Colors.lightBlue : Colors.pinkAccent;
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
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    decoration: BoxDecoration(
                        color: isRightColor, shape: BoxShape.circle),
                    child: StyledText('$questionIndex'),
                  ),
                  StyledHeader(
                    questionTitle,
                    size: 24,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: StyledText(
                  answer,
                  size: 12,
                  color: !isRight
                      ? Colors.lightBlue
                      : const Color.fromRGBO(163, 161, 161, 0.9),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 200,
                child: StyledText(
                  currentAnswer,
                  size: 12,
                  color: isRightColor,
                ),
              )
            ],
          ),
          Icon(isRight ? Icons.check_circle_outline : Icons.error_outline_sharp,
              color: isRight ? Colors.greenAccent : Colors.orangeAccent),
        ],
      ),
    );
  }
}
