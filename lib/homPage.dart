
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage(this.switchscreen, {super.key});

  final void Function() switchscreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 250,),
          Image.asset('asset/images/back.jpg',
          width:300,),
          SizedBox(height: 80,),
          Text('Let learn Flutter come on man ',
          style: TextStyle(
            color:Colors.white
          ),
          ),
          SizedBox(height: 30,),
          OutlinedButton.icon(onPressed: (){
            switchscreen();
          }, 
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.red
          ),
          icon:Icon(Icons.arrow_right_alt_outlined),
          label: Text("Start Quiz"))
        ],
      )
    );
  }
}