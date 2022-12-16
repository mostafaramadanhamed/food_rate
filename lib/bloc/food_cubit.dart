import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_rate/bloc/food_states.dart';
import 'package:food_rate/data/models/meal_model.dart';
import '../data/repository.dart';

class FoodCubit extends Cubit<FoodStates>  {
final FoodRepository foodRepository;
List<Meal>meals=[];
  FoodCubit(this.foodRepository):super(FoodInitialState());

  void getAllMeals(){
    emit(MealGetLoadingState());
    foodRepository.getAllMeals().then((meals) {
      emit(MealGetSuccessState(meals));
      this.meals=meals;
    }).catchError((error){
      emit(MealGetErrorState(error));
    });


  }
}