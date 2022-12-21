import 'package:flutter/material.dart';
import 'package:food_rate/const/strings.dart';
import 'package:food_rate/data/models/meal_model.dart';
class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding:const EdgeInsetsDirectional.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white.withOpacity(.7),
      ),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, MyStrings.foodDetailsScreen, arguments: meal);
        },
        child: ListTile(
          title: Hero(
            tag: meal.id,
            child: Container(
              width: double.infinity,
              padding:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0,),
              color: Colors.black.withOpacity(0.3),
              alignment: Alignment.bottomCenter,
              child: Text(meal.title, style: const TextStyle(
                height: 1.3,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          leading: Image.network(meal.image),
          // meal.image.isNotEmpty?
          // FadeInImage(
          //   width: double.infinity,
          //   height: double.infinity,
          //   placeholder:  const AssetImage('assets/images/loading.gif'),
          //   image: NetworkImage(meal.img),fit: BoxFit.cover,)
          //     :Image.asset('assets/images/null.jpg'),
        ),
      ),
    );
  }
}
