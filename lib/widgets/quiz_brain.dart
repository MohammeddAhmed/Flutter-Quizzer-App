import 'package:quizzer/models/question.dart';

class QuizBrain {

  int _questionNumber = 0;
  final List<Question> _question = [
    Question(
      questionText:
          'Has Real Madrid won the UEFA Champions League multiple times?',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Does Manchester United play in the English Premier League?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is Bayern Munich a German football club?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is FC Barcelona based in Spain?',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Is AC Milan one of the most successful Italian football clubs?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Does Liverpool FC play its home matches at arena stadium?',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Has Juventus FC won the Serie A title multiple times?',
      questionAnswer: false,
    ),
    Question(
      questionText:
          'Is Ajax Amsterdam known for its youth development program?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Has FC Porto won the UEFA Champions League?',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Has Celtic FC won the Scottish Premiership multiple times?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is Atletico Madrid based in Spain?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Has Olympique Lyonnais won the Ligue 1 title?',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Is Manchester City owned by a member of the Abu Dhabi royal family?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is FC Porto based in Germany?',
      questionAnswer: false,
    ),
    Question(
      questionText:
          'Has Boca Juniors won the Copa Libertadores multiple times?',
      questionAnswer: true,
    ),
  ];

  /// _question
  String getQuestionText() {
    return _question[_questionNumber].questionText;
  }
  bool getQuestionAnswer() {
    return _question[_questionNumber].questionAnswer;
  }
  void nextQuestion() {
    if (_questionNumber < _question.length - 1) {
      _questionNumber++;
    }
  }
  bool isFinished() {
    if (_questionNumber >= _question.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
