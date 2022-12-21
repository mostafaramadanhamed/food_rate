import 'package:flutter/material.dart';

import '../../data/models/meal_model.dart';

class MealsDetailsScreen extends StatelessWidget {
  final Meal meal;
  const MealsDetailsScreen({Key? key, required this.meal}) : super(key: key);

  Widget buildSliverAppBar(context){
    return SliverAppBar(
      elevation: 0,
      expandedHeight: MediaQuery.of(context).size.height/1.3,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          meal.title,
        ),
        background: Hero(
            tag: meal.id,
            child: Image.network(meal.image, fit: BoxFit.cover,)
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text:TextSpan(
                        children: [
                          TextSpan(
                            text: 'Name : ',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey
                            ),
                          ),
                          TextSpan(
                              text: meal.title,
                            style: TextStyle(
                              color: Colors.black,
                            )
                          )
                        ],
                      ) ,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    RichText(
                      text:TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Description : ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text: meal.description,
                          )
                        ],
                      ) ,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    RichText(
                      text:TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Average Rating  : ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text: '${meal.avgRating}',
                          )
                        ],
                      ) ,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    RichText(
                      text:TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Num of Rating   : ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text:'${meal.noOfRatings}',
                          )
                        ],
                      ) ,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),)
        ],
      ),
    );
  }
}
