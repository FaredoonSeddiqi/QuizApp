import 'package:adqize/data/questiondata.dart';
import 'package:adqize/model/answersbtn.dart';
import 'package:flutter/material.dart';


class question extends StatefulWidget {
  const question({
     Key?key,
     required this.onselected})
    : super(key: key);
  final void Function(String answer) onselected;
  @override
  State<question> createState() => _questionState();
}

class _questionState extends State<question> {


  var currentindex = 0;

  void answersQuestion (String selectedAnswer){
    widget.onselected(selectedAnswer);
    setState(() {
      currentindex++;
    });
    
  }
  @override
  Widget build(context) {
      final currentQuestion = questions[currentindex];
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.Text,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
            ),
           const SizedBox(height: 30,),
           ...currentQuestion.getshuffleAnswers().map((item){
              return AnswerBtn(answersText: item, onTap:(){
                answersQuestion(item);
              });
            }),
          ],
        ),
      ),
    );
  }
}