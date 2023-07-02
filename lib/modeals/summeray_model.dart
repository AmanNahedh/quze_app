import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Summeray extends StatelessWidget {
  const Summeray({super.key, required this.summerayData});

  final List<Map<String, Object>> summerayData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summerayData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: data['user answer'] == data['correct answer']
                        ? Colors.amber
                        : Colors.red,
                  ),
                  child: Text((data['question index']).toString()),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        data['correct answer'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      Text(
                        data['user answer'] as String,
                        style: GoogleFonts.lato(color: Colors.amber),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
