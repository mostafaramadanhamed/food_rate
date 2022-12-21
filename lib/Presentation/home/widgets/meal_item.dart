import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_rate/const/strings.dart';
import 'package:food_rate/data/models/meal_model.dart';
class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem({Key? key, required this.meal}) : super(key: key);
  Widget buildImageItemHome() {
    return Expanded(
      child: Container(clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15)
            )
        ),
        child:  Image(
          image: NetworkImage(meal.image),
        ),
      ),
    );
  }
  Expanded buildItemNameAndRateHome( BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(meal.title,style:const TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis,

                        ),softWrap: false,
                          maxLines: 1,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7,),
                  Row(
                    children:  [
                      const Icon(FontAwesomeIcons.solidStar,color: Colors.blue,size: 14),
                      const SizedBox(width: 5,),
                      AnimatedTextKit(
                        animatedTexts: [
                        ColorizeAnimatedText(
                        meal.avgRating.toString(),
                      textStyle: const TextStyle(
                      fontSize: 16,
                      ),
                        colors: [
                          Colors.purple,
                          Colors.black,
                          Colors.blueGrey,
                          Colors.red,
                        ],

                      ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),

                ],
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 1,
              child: Column(
                children: [

                  Text(meal.noOfRatings.toString(),style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 15),),
                  Text('Rated',style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 15),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      // padding:const EdgeInsetsDirectional.all(4.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
       //  color: Colors.white70.withOpacity(.7),
      ),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, MyStrings.foodDetailsScreen, arguments: meal);
        },

            child: Container(
              color:Theme.of(context).highlightColor.withOpacity(.3),
              child: Row(
                children: [
                  buildImageItemHome(),
                  buildItemNameAndRateHome( context),
                ],
              ),
            ),
          ),
          // meal.image.isNotEmpty?
          // FadeInImage(
          //   width: double.infinity,
          //   height: double.infinity,
          //   placeholder:  const AssetImage('assets/images/loading.gif'),
          //   image: NetworkImage(meal.img),fit: BoxFit.cover,)
          //     :Image.asset('assets/images/null.jpg'),
    );
  }
}
