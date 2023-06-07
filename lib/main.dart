import 'package:flutter/material.dart';
import 'package:quizzer/app/home.dart';
import 'package:quizzer/app/q_football.dart';
import 'package:quizzer/app/q_general.dart';
import 'package:quizzer/app/q_programming.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/q_football': (context) => const QFootball(),
        '/q_programming': (context) => const QProgramming(),
        '/q_general': (context) => const QGeneral(),
      },
    );
  }
}
