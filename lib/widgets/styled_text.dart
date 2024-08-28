import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  const TextStyles(this.text, {this.color = Colors.white70, this.size = 14});
  final Color color;
  final String text;
  final double size;
}

class StyledText extends StatelessWidget {
  const StyledText(
    this.title, {
    super.key,
    this.size = 14,
    this.color = Colors.white70,
  });
  final String title;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.abel(
          fontSize: size, color: color, fontWeight: FontWeight.w400),
      textAlign: TextAlign.center,
    );
  }
}

class StyledHeader extends StatelessWidget {
  const StyledHeader(this.text,
      {super.key, this.size = 14, this.color = Colors.white70});
  final String text;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      style: GoogleFonts.roboto(fontSize: size, color: color),
      textAlign: TextAlign.center,
    );
  }
}
