import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //--> _QuizState becouse is private

  // another way to doit is
  // activeScreen = 'start-screen';
  Widget? activeScreen;

  // 1. method
  @override
  void initState() {
    activeScreen = StartScreen(chooseScreen);
    super.initState();
  }

  void chooseScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    // 3. method
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(chooseScreen)
    //     : const QuestionsScreen();

    // 4 . method
    // widget screenWidget=startScreen(chooseScreen);
    //
    // if (activeScreen == 'questions-screen') {
    //   screenWidget = const QuestionsScreen();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue[400]!,
                const Color.fromARGB(255, 18, 47, 80),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // 1. method
          child: activeScreen,
          // 3. method
          // with the method above
          // child: screenWidget,
          // --------------------
          // with the method below
          // -------
          // 2 .method
          // child: activeScreen == 'start-screen'
          //     ? StartScreen(chooseScreen)
          //     : const QuestionsScreen(),
        ),
      ),
    );
  }
}
