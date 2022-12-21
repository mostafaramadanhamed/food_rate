import 'package:flutter/material.dart';
import 'package:food_rate/app_router.dart';
import 'package:food_rate/const/strings.dart';
void main() {
  runApp(  MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  // final  MaterialColor myColor =  const MaterialColor(0xFFFFFFFF,
  //     {
  //       50 : Colors.white10 ,
  //       100 : Colors.white12 ,
  //       200 : Colors.white30 ,
  //       300:  Colors.white38,
  //       400 : Colors.white60 ,
  //       500 :  Colors.white70 ,
  //       600 : Colors.white ,
  //       700 :  Color(0xFFF5F5F5) ,
  //       800 :  Colors.white ,
  //       900 : Colors.white ,
  //     });
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
       scaffoldBackgroundColor: Colors.blueGrey.shade50,
       highlightColor: Colors.blueGrey.shade200,
       appBarTheme: AppBarTheme(
         backgroundColor: Colors.blueGrey.shade300,
         titleTextStyle:const  TextStyle(color: Colors.black, fontWeight: FontWeight.w600,fontSize: 24),
         iconTheme:const IconThemeData(color: Colors.black,)
       ),
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.blueGrey,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.blueGrey.shade600
          )
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      title: MyStrings.kAppName,
        onGenerateRoute: appRouter.generateRoute,
    );
  }

}