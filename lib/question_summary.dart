import 'package:flutter/material.dart';
import 'package:quiz_app/question_identifier.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.score, {super.key});

  final List<Map<String, Object>> score;

  @override
  Widget build(BuildContext context) {
    // get score to paads question i
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(89, 26, 138, 169),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children:
              score.map((data) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    QuestionIdentifier(score: data),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(178, 206, 58, 232),
                              border: Border.all(
                                color: Colors.black,
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              data['userAnswer'] as String,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                          ),
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