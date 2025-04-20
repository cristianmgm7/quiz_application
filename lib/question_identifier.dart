import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, required this.score});
  final Map<String, Object> score;

  // Method to get the color based on the answer
  Color getColor() {
    if (score['correctAnswer'] == score['userAnswer']) {
      return Colors.green;
    } else {
      return const Color.fromARGB(178, 206, 58, 232);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: getColor(),
        border: Border.all(color: Colors.black, width: 0.2),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(((score['questionIndex'] as int) + 1).toString()),
    );
  }
}
