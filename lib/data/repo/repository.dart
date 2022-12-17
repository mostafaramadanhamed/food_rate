import 'package:food_rate/data/models/meal_model.dart';
import 'package:food_rate/data/service/dio.dart';

class FoodRepository{
  final DioHelper dioHelper;

  FoodRepository(this.dioHelper);

  Future<List<Meal>>getAllMeals()async{
    final meals=await dioHelper.getAllMeals();
    return meals.map((meal)=>Meal.fromJson(meal)).toList();
  }
}