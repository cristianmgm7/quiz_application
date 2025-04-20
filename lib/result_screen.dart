import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestartQuiz,
  });

  final void Function() onRestartQuiz;
  final List<String> chosenAnswers;

  // Method to calculate the score
  List<Map<String, Object>> getScore() {
    List<Map<String, Object>> score = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      score.add({
        'questionIndex': i,
        'question': questions[i].question,
        'correctAnswer': questions[i].answers[0],
        'userAnswer': chosenAnswers[i],
      });
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    // Calculate the score and total questions
    final getSummaryData = getScore();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers =
        getSummaryData.where((item) {
          return item['correctAnswer'] == item['userAnswer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            QuestionSummary(getScore()), // ---> this is the summary of the quiz
            const SizedBox(height: 50),
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: onRestartQuiz,
              label: const Text('Restart Quiz'),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
