import 'package:flutter/material.dart';
import 'package:food_rate/view/home/home_screen.dart';
import 'package:food_rate/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Rate',
      home: HomePage(),
    );
  }
}