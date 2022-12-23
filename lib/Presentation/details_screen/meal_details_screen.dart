import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_rate/bloc/food_cubit.dart';
import 'package:food_rate/data/repo/repository.dart';
import 'package:food_rate/data/service/dio.dart';

import '../../data/models/meal_model.dart';

class MealsDetailsScreen extends StatefulWidget {
  final Meal meal;
  const MealsDetailsScreen({Key? key, required this.meal}) : super(key: key);

  @override
  State<MealsDetailsScreen> createState() => _MealsDetailsScreenState();
}

class _MealsDetailsScreenState extends State<MealsDetailsScreen> {
    int ? stars;
  Widget buildSliverAppBar(context){
    return SliverAppBar(
      elevation: 0,
      expandedHeight: MediaQuery.of(context).size.height/1.3,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          widget.meal.title,
        ),
        background: Hero(
            tag: widget.meal.id,
            child: Image.network(widget.meal.image, fit: BoxFit.cover,)
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics:const BouncingScrollPhysics(),
        slivers: [
          buildSliverAppBar(context),
          SliverList(delegate: SliverChildListDelegate(
            [
              Container(
                margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                padding: const EdgeInsets.all(8.0),
                decoration:const BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildRichText(text:  'Name : ',value:widget.meal.title ,maxLines: 1),
                    buildRichText(text:  'Description : ',value:widget.meal.description ,maxLines: 3),
                    buildRichText(text:  'Num of ratings : ',value:'${widget.meal.noOfRatings}' ,maxLines: 1),
                    buildRichText(text:  'Average : ',value:'${widget.meal.avgRating}' ,maxLines: 1),
                   SizedBox(
                     height: MediaQuery.of(context).size.height/9,
                   ),
                RatingBar.builder(
                    initialRating: 3,
                    itemCount: 5,
                    itemBuilder: (context, index)
                    {
                      switch (index) {
                        case 0:
                          return const Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.red,
                          );
                        case 1:
                          return const Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          );
                        case 2:
                          return const Icon(
                            Icons.sentiment_neutral,
                            color: Colors.amber,
                          );
                        case 3:
                          return const Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.lightGreen,
                          );
                        case 4:
                          return const Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.green,
                          );
                      }
                      return Container();
                    },
                    onRatingUpdate: (rating) {
                      print(rating);
                      setState((){
                        stars=rating.toInt();
                      });
                    },),
                    const SizedBox(height: 15,),
                    Container(
                      height: MediaQuery.of(context).size.height/12,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                          color: Colors.tealAccent.shade700,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: TextButton(
                          onPressed: ()async{
                          await  FoodCubit(FoodRepository(DioHelper())).mealRating(id:widget.meal.id, stars: stars!);
                          },
                          child:  Text('Save',
                            style: TextStyle(color: Colors.blueGrey.shade100,fontSize: 25),)),
                    )
                  ],
                ),
              ),
            ],
          ),)
        ],
      ),
    );
  }

  Widget buildRichText({required String text, required String value,required int maxLines}) {
    return RichText(
                    text:TextSpan(
                      children: [
                         TextSpan(
                          text:text,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey
                          ),
                        ),
                        TextSpan(
                            text:value,
                          style:  TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.blueGrey.shade600,
                          )
                        )
                      ],
                    ) ,
                    maxLines: maxLines,
                    overflow: TextOverflow.ellipsis,
                  );
  }
}
