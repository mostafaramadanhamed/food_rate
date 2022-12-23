import 'package:flutter/material.dart';
import 'package:food_rate/const/strings.dart';

class  AboutUSScreen extends StatelessWidget {
  const  AboutUSScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
      Center(
        child: RichText(
        text:const TextSpan(
        children: [
          TextSpan(
          text:MyStrings.kAppName,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blueGrey,
          ),
        ),
        ],
    ) ,
    ),

      ),
          RichText(
            text:const TextSpan(
              children: [
                TextSpan(
                  text:'A food rating app made by Mostafa Ramadan, the leader of Team M5M'
                      ' Introduction to the application \n'
              ' First, log in \n'
             ' Second, go to the home page \n'
             ' Third, browse the food \n'
             ' Fourth, evaluate it \n'
            ' Fifth, we are done 😂 \n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
