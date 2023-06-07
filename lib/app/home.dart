import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzer/widgets/cont_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Quizzer',
          style: GoogleFonts.cabin(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Choose Test Subjects And Answer 'Yes'  Or 'NO' .",
                style: GoogleFonts.cabin(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              ContHome(
                onPressed: () => Navigator.pushNamed(context, '/q_football'),
                title: 'Questions About Football Clubs .',
              ),
              const SizedBox(height: 10),
              ContHome(
                onPressed: () => Navigator.pushNamed(context, '/q_programming'),
                title: 'Questions About Programming .',
              ),
              const SizedBox(height: 10),
              ContHome(
                onPressed: () => Navigator.pushNamed(context, '/q_general'),
                title: 'General Questions .',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
