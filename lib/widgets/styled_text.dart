import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.title, {super.key, this.size = 14});
  final String title;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: size, color: Colors.white70),
      textAlign: TextAlign.center,
    );
  }
}
