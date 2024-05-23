class Answer {
  final String answer;
  final bool right;

  const Answer({
    required this.answer,
    this.right = false,
  });

  factory Answer.empty() => const Answer(answer: '', right: false);
}