import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_rate/bloc/food_cubit.dart';
import 'package:food_rate/const/img.dart';
import 'package:food_rate/const/strings.dart';
import 'package:food_rate/data/repo/repository.dart';
import 'package:food_rate/data/service/dio.dart';
import 'widgets/custom_widget.dart';
import '../home/home_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
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
                buildTextFormField(label: "Email", onChanged: (m) {}, controller:usernameController ,),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                buildTextFormField(label: "Password", onChanged: (m) {},controller: passwordController,),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 45,
                ),
                Center(
                  child: buildButton(context, text: 'Login',
                  onPressed: (){
                    try {
                      FoodCubit(FoodRepository(DioHelper())).register(username: usernameController.text, password: passwordController.text);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BlocProvider(

                          create: (BuildContext context) =>FoodCubit(FoodRepository(DioHelper())),
                          child: const HomePage()) ) );
                    }
                    catch(error){
                      debugPrint(error.toString());
                    }

                  }),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
