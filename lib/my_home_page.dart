import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
// import assets.images; // This import is incorrect and will cause an error
// Correct import statement for images
// Assuming you have an images.dart file in assets folder

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[400]!, const Color.fromARGB(255, 18, 47, 80)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: StartScreen(onPressed: onPressed),
      ),
    );
  }
}
