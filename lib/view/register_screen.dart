import 'package:flutter/material.dart';
import 'package:food_rate/const/img.dart';

import 'custom_widget.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Center(child: Image(image: AssetImage(SplashImage))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                buildTextFormField(label: "Email",onChanged: (m){}),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
               buildTextFormField(label:  "Password", onChanged: (m){}),
                buildRowInBottom(
                    text: 'Don’t have an account?',
                    textButton: 'Sign up',
                    buttonOnPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
