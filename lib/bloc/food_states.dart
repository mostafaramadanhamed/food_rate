abstract class FoodStates{}

class FoodInitialState extends FoodStates{}

// Meals
// get meals
class MealGetLoadingState extends FoodStates{}
class MealGetSuccessState extends FoodStates{}
class MealGetErrorState extends FoodStates{
  final String error;

  MealGetErrorState(this.error);
}

//Rating
// Set Ratings
class RatingSetLoadingState extends FoodStates{}
class RatingSetSuccessState extends FoodStates{}
class RatingSetErrorState extends FoodStates{
  final String error;

  RatingSetErrorState(this.error);
}