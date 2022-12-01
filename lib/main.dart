import 'package:flutter/material.dart';
import 'package:food_rate/const/strings.dart';

import 'Presentation/home/home_screen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final  MaterialColor myColor =  const MaterialColor(0xFFFFFFFF,
      {
        50 : Colors.white10 ,
        100 : Colors.white12 ,
        200 : Colors.white30 ,
        300:  Colors.white38,
        400 : Colors.white60 ,
        500 :  Colors.white70 ,
        600 : Colors.white ,
        700 :  Color(0xFFF5F5F5) ,
        800 :  Colors.white ,
        900 : Colors.white ,
      });
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch:myColor,
        backgroundColor:myColor.shade700
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      title: Strings.kAppName,
      home: const HomePage(),
    );
  }

}