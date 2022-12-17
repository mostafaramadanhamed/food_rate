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
          const  Text(MyStrings.kAppName,style: TextStyle(
              fontSize: 25
            ),),
            RichText(text: const TextSpan(
              text:'The power of the dish : \n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                children: [
              TextSpan(
                  text:'We believe that choosing a restaurant by searching '
                      'current review platforms is the same as judging a book by its cover'
                      ' Reviews tend to be influenced by the decor, the wait time, or ev'
                      'en the serving staff, not the actual food itself. Eaten is the first '
                      'review guide to be 100% dish based, which ensures the reviews'
                      ' are all about the food. \n',
            style: TextStyle(fontWeight: FontWeight.w500)  )
            ]
            ),

            )
          ],
        ),
      ),
    );
  }
}
