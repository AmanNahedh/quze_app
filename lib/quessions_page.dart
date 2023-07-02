import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/modeals/answer_button.dart';


class Questions extends StatefulWidget {
  Questions({super.key, required this.onAnswred});

  final void Function(String answer) onAnswred;

  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  var qNumber = 0;

  @override
  Widget build(context) {
    var curentQ = questions[qNumber];
    void buttonPress(answer) {
      widget.onAnswred(answer);
      setState(() {
        qNumber = qNumber + 1;
      });
    }

    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              curentQ.question,
              style: GoogleFonts.lato(
                color: Colors.white60,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ...curentQ.shuffleAnsweres().map((answer) {
              return AnswerButton(
                answer: answer,
                preasedAnswer: () {
                  buttonPress(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
