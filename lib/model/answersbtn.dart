import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  final String answersText;
  final Function() onTap;

  const AnswerBtn({
    Key? key,
    required this.answersText,
    required this.onTap,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        backgroundColor:  Color.fromARGB(255,17, 13,155),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
      ),
     child:Text(answersText)) ;
  }
}