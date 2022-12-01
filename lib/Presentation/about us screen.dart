import 'package:flutter/material.dart';
import 'package:food_rate/const/img.dart';
import 'package:food_rate/const/strings.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 24),
        child: Column(
          children: [
            Center(child: Image.asset(AssetsImages.splashImage)),
          const  Text(Strings.kAppName,style: TextStyle(
              fontSize: 25
            ),)
          ],
        ),
      ),
    );
  }
}
