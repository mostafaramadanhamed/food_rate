import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_rate/bloc/food_states.dart';
import 'package:food_rate/data/models/meal_model.dart';
import 'package:food_rate/data/service/dio.dart';
import '../data/repo/repository.dart';

class FoodCubit extends Cubit<FoodStates>  {
final FoodRepository foodRepository;
List<Meal>meals=[];
  FoodCubit(this.foodRepository):super(FoodInitialState());

static FoodCubit get(context) => BlocProvider.of(context);


void getAllMeals(){
    emit(MealGetLoadingState());
    foodRepository.getAllMeals().then((meals) {
      emit(MealGetSuccessState(meals));
      this.meals=meals;
    }).catchError((error){
      emit(MealGetErrorState(error.toString()));
      debugPrint(error.toString());
    });


  }
  void register({
  required String username,
    required String password,
}){
    try {
      DioHelper().register(username: username, password: password);
    }
    catch(ex){
      debugPrint(ex.toString());
    }
  }
}