import 'dart:io';

import 'package:adqize/data/questiondata.dart';
import 'package:adqize/quiz.dart';
import 'package:flutter/material.dart';
import 'package:adqize/sumary.dart';

class results extends StatelessWidget {
  const results({super.key, required this.chooseAnswer});
  final List<String> chooseAnswer;
 List<Map<String,Object>> getresult(){
      final List<Map<String,Object>>  sumary= [];

      for(var i = 0; i< chooseAnswer.length;i++){
        sumary.add({
          'Question-index':i,
          'Qestion':questions[i].Text,
          'correct-answers':questions[i].answers[0],
          'User-answers':chooseAnswer[i],
        });
      }


      return sumary;
  }
  @override
  Widget build(BuildContext context) {
    final samaryData = getresult();
    final numtotalQ = questions.length;
    final numtotalAn = samaryData.where((data){
      return data['User-answers'] == data['Correct-answers'];
    }
     
     ).length;
    return   SizedBox(
      width: double.infinity,
      child: Padding( 
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("you answered $numtotalAn   out of $numtotalQ "),
            SizedBox(height: 30),
            QuestionSamary(samaryData),
            SizedBox(height: 30,),
            TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => Quiz()));
          
            }, child: Text("restart Quiz")),
          ],
        ),
      ),);
  }
}