import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/modeals/summeray_model.dart';


class ResltScrean extends StatelessWidget {
  ResltScrean(this.restart, {super.key, required this.answeres});

  List<String> answeres;

  void Function() restart;

  List<Map<String, Object>> getSummray() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < answeres.length; i++) {
      summary.add({
        'question index': i,
        'question': questions[i].question,
        'correct answer': questions[i].answeres[0],
        'user answer': answeres[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final getAnswres = getSummray();
    final totalAnsweres = questions.length;
    final totalCorectAnsweres = getAnswres.where((data) {
      return data['correct answer'] == data['user answer'];
    }).length;

    return Container(
        margin: const EdgeInsets.all(40),
        width: double.infinity,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('u have answred $totalCorectAnsweres of $totalAnsweres '),
              const SizedBox(
                height: 30,
              ),
              Summeray(
                summerayData: getSummray(),
              ),
              TextButton.icon(
                onPressed: restart,
                icon: Icon(Icons.refresh),
                label: Text('restart'),
              ),
            ]));
  }
}
