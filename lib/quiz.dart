import 'package:adqize/data/questiondata.dart';
import 'package:adqize/homPage.dart';
import 'package:adqize/model/answersbtn.dart';
import 'package:adqize/question.dart';
import 'package:adqize/result.dart';
import 'package:flutter/material.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
 List<String> SelectAnswers = [];
  var activeScreen = 'Start Screen';
  void chooseAnswer(String Answer){
    SelectAnswers.add(Answer);
    if(SelectAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result Screen';
      });
    }
  }
  
  void switchscreen(){
    setState(() {
      activeScreen = 'Question Screen';
    });
  }
  
  @override
  Widget build(context) {
    Widget screenWidget = homePage(switchscreen);
    
    if(activeScreen == 'Question Screen'){
      screenWidget = question(
        onselected: chooseAnswer,
      );
    }

    if(activeScreen =="result Screen"){
      screenWidget = results(chooseAnswer: SelectAnswers,);
    }

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255,17, 13,155),
                Color.fromARGB(255,107, 15,168),
              

              ],      
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
              
            ),
          ),
          child: activeScreen == 'Start Screen' ? homePage(switchscreen):screenWidget,
        ),
        ),  
    );
  }
}