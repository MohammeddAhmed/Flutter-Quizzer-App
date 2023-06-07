import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzer/widgets/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QFootball extends StatefulWidget {
  const QFootball({super.key});

  @override
  State<QFootball> createState() => _QFootballState();
}

class _QFootballState extends State<QFootball> {

  QuizBrain quizBrain = QuizBrain();
  List<Icon> scoreKeeper = [];
  void checkAnswer(bool userChoice) {
    if (quizBrain.isFinished()) {
      Alert(context: context, title: 'Finished', desc: 'You\'r Done.').show();
      setState(() {
        quizBrain.reset();
        scoreKeeper.clear();
      });

    } else {
      bool correctAnswer = quizBrain.getQuestionAnswer();
      setState(() {
        if (correctAnswer == userChoice) {
          scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
        } else {
          scoreKeeper.add(const Icon(Icons.close, color: Colors.red));
        }
        quizBrain.nextQuestion();
      });
    }
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            setState(() => Navigator.pop(context),);
          },
          icon: const Icon(Icons.arrow_back_ios, size: 28,),),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xff393646),
              Color(0xff6D4D6E),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    quizBrain.getQuestionText(),
                    style: GoogleFonts.cabin(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                   checkAnswer(true);
                  },
                  child: Text(
                    'True',
                    style: GoogleFonts.cabin(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    checkAnswer(false);
                  },
                  child: Text(
                    'False',
                    style: GoogleFonts.cabin(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Wrap(
              children: scoreKeeper,
            ),
          ],
        ),
      ),
    );
  }
}
