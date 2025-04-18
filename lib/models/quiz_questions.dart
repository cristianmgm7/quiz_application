class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // create a copy of the list
    final shuffledList = List.of(answers);
    // shuffle the list
    shuffledList.shuffle();
    return shuffledList;
  }
}
