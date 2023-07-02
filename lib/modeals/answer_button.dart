import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key, required this.answer, required this.preasedAnswer});

  final String answer;
  void Function() preasedAnswer;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: preasedAnswer,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 5,
          ),
          backgroundColor: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
      child: Text(
        answer,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white60),
      ),
    );
  }
}
