import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/screens/quiz.dart';

void main() {
  //  Display Ui
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
