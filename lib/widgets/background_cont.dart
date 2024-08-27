import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(this.children, this.colors, {super.key});
  final List<Color> colors;
  final Widget? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      width: double.infinity,
      height: double.infinity,
      child: children,
    );
  }
}
