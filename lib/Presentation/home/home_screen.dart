import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
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
      child: Column(
        children: [
          buildMealsList(),
        ],
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
  Widget buildNoInternetWidget(){
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/15,
            ),
            Image.asset('assets/images/no_internet.jpg',
              height:MediaQuery.of(context).size.height/1.5 ,
              width: MediaQuery.of(context).size.width,),
            const Text(
              ' Can\'t connect .. check your internet',
              style: TextStyle(
                fontSize: 22,
                color: MyColor.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
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
        body:  OfflineBuilder(
          connectivityBuilder: (
              BuildContext context,
              ConnectivityResult connectivity,
              Widget child,
              ) {
            final bool connected = connectivity != ConnectivityResult.none;
            if(connected){
              return buildBlocWidget();
            }
            else{
              return buildNoInternetWidget();
            }
          },
          child: const Center(
            child:  CircularProgressIndicator(color: MyColor.primaryColor,),
          ),
        )
    );
  }
}
