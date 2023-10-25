class QuizQuestion {
  const QuizQuestion({required this.question, required this.answers});

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    List<String> shuffledList = List.from(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
