import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_rate/app_router.dart';
import 'package:food_rate/bloc/bloc_observer.dart';
import 'package:food_rate/const/strings.dart';
void main() {
  Bloc.observer=MyBlocObserver();
  runApp(  MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
       scaffoldBackgroundColor: Colors.blueGrey.shade50,
       highlightColor: Colors.blueGrey.shade200,
       appBarTheme: AppBarTheme(
         elevation: 0,
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
            elevation: 0,
              backgroundColor: Colors.blueGrey.shade600
          )
        /* dark theme settings */
      ),
      themeMode: ThemeMode.light,
      title: MyStrings.kAppName,
        onGenerateRoute: appRouter.generateRoute,
    );
  }

}