import 'package:flutter/material.dart';
import 'package:food_rate/Presentation/enter/register.dart';
import 'package:food_rate/const/img.dart';
import 'package:food_rate/const/strings.dart';
import 'widgets/custom_widget.dart';
import '../home/home_screen.dart';

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
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Center(child: Image(image: AssetImage(AssetsImages.splashImage))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                const Center(
                  child:  Text(
                    MyStrings.kAppName,
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 22,
                ),
                 Padding(
                  padding:const  EdgeInsets.symmetric(horizontal: 12.0),
                  child:  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blueGrey.shade500,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                buildTextFormField(label: "Email", onChanged: (m) {}),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                buildTextFormField(label: "Password", onChanged: (m) {}),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 45,
                ),
                Center(
                  child: buildButton(context, text: 'Login',
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage() ) );
                  }),
                ),
                buildRowInBottom(
                    text: 'Don’t have an account?',
                    textButton: 'Sign up',
                    buttonOnPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Register();
                      }));
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
