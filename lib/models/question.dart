import 'package:trail_poland/models/answer.dart';

class Question {
  final int id;
  final String question;
  final List<Answer> answers;

  const Question({
    required this.id,
    required this.question,
    required this.answers,
  });
}