import 'package:quizzer/models/question.dart';

class QuizBrain2 {

  int _questionNumber2 = 0;
  final List<Question> _question2 = [
    Question(
      questionText:
      'Does the Python programming language use a garbage collector for memory management?',
      questionAnswer: true,
    ),
    Question(
      questionText:
      'Can you directly manipulate memory in Java without using external libraries or tools?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Does the Haskell programming language allow mutable variables?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Is the Ruby programming language strictly interpreted without any form of compilation?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Can you create multi-threaded applications in the Lua programming language?',
      questionAnswer: true,
    ),
    Question(
      questionText:
      'Does the C programming language provide built-in support for exception handling?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Is the TypeScript programming language natively supported by all major web browsers?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Can you perform low-level system programming using the JavaScript programming language?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Is the PHP programming language primarily used for client-side web development?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Does the Rust programming language support automatic memory management?',
      questionAnswer: true,
    ),
    Question(
      questionText:
      'Can you write concurrent programs in the Go programming language?',
      questionAnswer: true,
    ),
    Question(
      questionText:
      'Is the Swift programming language primarily used for Android app development?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Does the Perl programming language have native support for object-oriented programming?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is the C# programming language platform-independent?',
      questionAnswer: false,
    ),
    Question(
      questionText:
      'Can you use operator overloading in the Java programming language?',
      questionAnswer: false,
    ),
  ];

  /// _question2
  String getQuestionText2() {
    return _question2[_questionNumber2].questionText;
  }
  bool getQuestionAnswer2() {
    return _question2[_questionNumber2].questionAnswer;
  }
  void nextQuestion2() {
    if (_questionNumber2 < _question2.length - 1) {
      _questionNumber2++;
    }
  }
  bool isFinished2() {
    if (_questionNumber2 >= _question2.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  void reset2() {
    _questionNumber2 = 0;
  }
}