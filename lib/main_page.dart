
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screan.dart';


import 'home_page.dart';
import 'quessions_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  var activeScrean = 'home-page';
  List<String> answeres = [];

  void changeScrean() {
    setState(() {
      activeScrean = 'Questions-page';
    });
  }

  void restaret(){

    setState(() {
      answeres=[];
      activeScrean ='home-page';
    });
  }
  void addAnsweres(String answer) {
    answeres.add(answer);

    if (answeres.length == questions.length) {
      setState(() {
        activeScrean = 'result-page';

      });
    }
  }

  Widget? screan;

  @override
  Widget build(context) {
    if (activeScrean == 'home-page') {
      screan = HomePAge(changeScrean);
    } else {
      screan=Questions(onAnswred: addAnsweres);
    }

    if (activeScrean == 'result-page') {
      screan =
          ResltScrean(answeres: answeres,restaret);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.deepPurple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screan,
        ),
      ),
    );
  }
}
