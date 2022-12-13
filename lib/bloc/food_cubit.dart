

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_rate/bloc/food_states.dart';

class FoodCubit extends Cubit<FoodStates>  {

  FoodCubit():super(FoodInitialState());

}