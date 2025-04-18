import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Questions!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          AnwerButton(answerText: 'answe...', onTap: () {}),
          SizedBox(height: 10),
          AnwerButton(answerText: 'answe...', onTap: () {}),
          SizedBox(height: 10),
          AnwerButton(answerText: 'answe...', onTap: () {}),
          SizedBox(height: 10),
          AnwerButton(answerText: 'answe...', onTap: () {}),
        ],
      ),
    );
  }
}
