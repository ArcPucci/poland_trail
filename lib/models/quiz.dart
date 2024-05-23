import 'package:trail_poland/models/question.dart';

class Quiz {
  final int id;
  final String name;
  final String image;
  final bool locked;
  final List<Question> questions;

  Quiz({
    required this.id,
    required this.name,
    required this.image,
    required this.questions,
    this.locked = false,
  });
}
