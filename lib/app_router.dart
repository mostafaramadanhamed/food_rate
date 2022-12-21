import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_rate/Presentation/home/home_screen.dart';
import 'package:food_rate/bloc/food_cubit.dart';
import 'package:food_rate/const/strings.dart';
import 'package:food_rate/data/repo/repository.dart';
import 'package:food_rate/data/service/dio.dart';


class AppRouter{

  late FoodRepository foodRepository;
  late FoodCubit foodCubit;
  AppRouter(){
    foodRepository=FoodRepository(DioHelper());
    foodCubit=FoodCubit(foodRepository);
  }
  Route ? generateRoute(RouteSettings settings){
    switch (settings.name){
      case MyStrings.foodScreen:
        return MaterialPageRoute(builder: (_)=>  BlocProvider(
          create:(BuildContext context)=>
          foodCubit ,
          child: const HomePage(),
        ));

      // case characterDetailsScreen:
      //   final character=settings.arguments as Character ;
      //   return MaterialPageRoute(builder: (_)=> BlocProvider(
      //       create: (BuildContext context)=>foodRepository,
      //       child: CharacterDetailsScreen(character: character,)));
    }
    return null;
  }
}