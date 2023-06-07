import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContHome extends StatelessWidget {
  const ContHome({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: GoogleFonts.cabin(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
