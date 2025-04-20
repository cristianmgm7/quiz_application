import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.score, {super.key});

  final List<Map<String, Object>> score;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(89, 26, 138, 169),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          children:
              score.map((data) {
                return Row(
                  children: [
                    Text(((data['questionIndex'] as int) + 1).toString()),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            data['question'] as String,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                color: Colors.black,
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              data['correctAnswer'] as String,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          Text(data['userAnswer'] as String),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
// This widget displays the summary of the quiz results.
// It takes a list of maps as input, where each map contains the question index,