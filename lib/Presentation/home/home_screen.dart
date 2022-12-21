import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_rate/Presentation/home/widgets/meal_item.dart';
import 'package:food_rate/bloc/food_cubit.dart';
import 'package:food_rate/bloc/food_states.dart';
import 'package:food_rate/const/color.dart';
import 'package:food_rate/data/models/meal_model.dart';
import 'widgets/home_widgets.dart';


class HomePage  extends StatefulWidget {
 const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late List<Meal>allMeals;
  Widget buildBlocWidget() {
    return BlocBuilder<FoodCubit,FoodStates>(
      builder: (context,state){
        if(state is MealGetSuccessState){
          allMeals=state.meals;
          return buildLoadedListWidget();
        }else{
          return const Center(child:  CircularProgressIndicator());
        }
      },
    );
  }
  Widget buildLoadedListWidget(){
    return SingleChildScrollView(
      child: Container(
        color:MyColor.primaryColor.shade200,
        child: Column(
          children: [
            buildMealsList(),
          ],
        ),
      ),
    );
  }
  Widget buildMealsList(){
    return ListView.builder(
       shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount:allMeals.length,
        itemBuilder: (context, index) {
          return MealItem(
            meal:allMeals[index]
          );
        });
  }
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FoodCubit>(context).getAllMeals();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarHome(context),
      body: buildBlocWidget(),
    );
  }
}
