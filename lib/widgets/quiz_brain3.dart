import 'package:quizzer/models/question.dart';

class QuizBrain3 {
  int _questionNumber3 = 0;
  final List<Question> _question3 = [
    Question(
      questionText:
      'Is water a molecule composed of two hydrogen atoms and one oxygen atom?',
      questionAnswer: true,
    ),
    Question(
      questionText:
      'Is the capital of France Paris?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is the Earth the third planet from the Sun?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is the Mona Lisa a famous painting by Leonardo da Vinci?',
      questionAnswer: true,
    ),
    Question(
      questionText:
      'Is English one of the official languages of Australia?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is the Great Wall of China visible from space?',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Is Mount Everest the highest mountain in the world?',
      questionAnswer: true,
    ),
    Question(
      questionText:
      'Is the sun a star?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is the iPhone a smartphone developed by Apple?',
      questionAnswer: true,
    ),
    Question(
      questionText:
      'Is a triangle a polygon with three sides?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is the Amazon River the longest river in South America?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is the Statue of Liberty located in New York City?',
      questionAnswer: true,
    ),
    Question(
      questionText:
      'Is the moon larger than Pluto?',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Is Tokyo the capital city of South America?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Is the Taj Mahal a UNESCO World Heritage site?',
      questionAnswer: true,
    ),
  ];

  /// _question2
  String getQuestionText3() {
    return _question3[_questionNumber3].questionText;
  }
  bool getQuestionAnswer3() {
    return _question3[_questionNumber3].questionAnswer;
  }
  void nextQuestion3() {
    if (_questionNumber3 < _question3.length - 1) {
      _questionNumber3++;
    }
  }
  bool isFinished3() {
    if (_questionNumber3 >= _question3.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  void reset3() {
    _questionNumber3 = 0;
  }
}