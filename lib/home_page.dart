import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePAge extends StatelessWidget {
  const HomePAge(this.changeScrean,{super.key});


  final void Function() changeScrean;


  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'asset/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'learn flutter the fun way',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: const Color.fromARGB(255, 237, 223, 232),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            onPressed: changeScrean,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'start quiz',
            ),
          ),
        ],
      ),
    );
  }
}
