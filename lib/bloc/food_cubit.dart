

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_rate/bloc/food_states.dart';
import 'package:food_rate/data/models/meal_model.dart';
import 'package:food_rate/data/service/dio.dart';

class FoodCubit extends Cubit<FoodStates>  {

  FoodCubit():super(FoodInitialState());

// late DioHelper dioHelper;
// void getMeals(){
//   dioHelper.getDate(url: 'meals/');
// }
  // List<Meal>getAllCharacters(){
  //   dioHelper.getDate(url: 'meals').then((val) {
  //     emit(MealGetLoadingState());
  //
  //   });
  //   return Meal;
  // }
}