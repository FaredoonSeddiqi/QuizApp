import 'package:flutter/material.dart';

class QuestionSamary extends StatelessWidget {
  const QuestionSamary(this.samaryData, {Key? key});

  final List<Map<String, Object>> samaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: samaryData.map((data) {
            final questionIndex = (data['Question-index'] as int?) ?? 0;
            final questionText = (data['Question'] as String?) ?? '';
            final userAnswer = (data['User-answers'] as String?) ?? '';
            final correctAnswer = (data['correct-answers'] as String?) ?? '';
          
            return Row(
              children: [
                Text((questionIndex + 1).toString(),
                 ),
                Column(
                  children: [
                    Text(questionText),
                    const SizedBox(height: 5),
                    Text(userAnswer),
                    Text(correctAnswer),
                  ],
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
