import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:trail_poland/data/quizzes.dart';
import 'package:trail_poland/models/models.dart';

class QuizProvider extends ChangeNotifier {
  final GoRouter _router;

  QuizProvider({required GoRouter router}) : _router = router;

  bool _finished = false;


  bool get finished => _finished;

  List<Question> questions = [];

  Quiz _quiz = quizzes.first;

  Quiz get quiz => _quiz;

  int _currentQuestion = 0;

  int get currentQuestion => _currentQuestion + 1;

  Question get question => quiz.questions[_currentQuestion];

  int total = 0;

  bool get success => ((total * 100) ~/ quiz.questions.length) >= 70;

  int _answerIndex = -1;

  int get answerIndex => _answerIndex;

  void init() {
    _finished = false;
    total = 0;
    _currentQuestion = 0;
    notifyListeners();
  }

  void selectQuiz(Quiz quiz) {
    _quiz = quiz;
    questions = List.from(quiz.questions);
    _finished = false;
    total = 0;
    _currentQuestion = 0;
    notifyListeners();
  }

  void selectAnswer(int index) {
    _answerIndex = index;
    notifyListeners();
  }

  void nextQuestion() {
    Answer answer = Answer.empty();
    if(_answerIndex != -1) answer = question.answers[_answerIndex];
    if (_currentQuestion == quiz.questions.length - 1) {
      if (answer.right) total++;
      _finished = true;
      _router.go('/quiz/game/finish_game');

      notifyListeners();
      return;
    }

    _currentQuestion++;
    _answerIndex = -1;

    if (answer.right) total++;

    notifyListeners();
  }
  
  void tryAgain() {
    init();
    _router.go('/quiz/game');
  }

  void learn() {
    init();
    _router.go('/quiz');
  }
}
