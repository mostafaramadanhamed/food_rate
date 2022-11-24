import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage  extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Home',style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                FontAwesomeIcons.bell,
                color: Colors.black,
              )),
        ],
        elevation: 0,
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/4,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                    itemBuilder:(context,index)=>Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                      const Expanded(
                      child:  Image(
                      image: NetworkImage('https://img.freepik.com/free-photo/turkish-arabic-traditional-ramadan-mix-kebab-plate-kebab-adana-chicken-lamb-beef-lavash-bread-with-sauce-top-view_2829-6169.jpg?w=1060&t=st=1669300834~exp=1669301434~hmac=6d5562bc67a4e966d462361fd7ba7a21bf8cbba50204ec3fdb5bce4c1e67807d'),

                      ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8,),
                            child: Column(
                              children: [
                                Row(
                                  children:const [
                                     Text('kebab adana',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                                  ],
                                ),
                                const SizedBox(height: 7,),
                                Row(
                                  children: [
                                    const  Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                                    const  Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                                    const Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                                    const Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                                    const Icon(FontAwesomeIcons.solidStarHalfStroke,color: Colors.amberAccent,size: 13,),
                                    SizedBox(width: MediaQuery.of(context).size.width/70,),
                                    Text('+56',style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14),)

                                  ],
                                )

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                scrollDirection: Axis.horizontal,
                  itemCount: 10,

                ),
              ),
             ListView.builder(
               shrinkWrap: true,
               physics: const NeverScrollableScrollPhysics(),
               itemBuilder:(context,index){
               return  Container(
                 margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                 clipBehavior: Clip.antiAliasWithSaveLayer,
                 decoration: BoxDecoration(
                     color: Colors.grey.shade100,
                     borderRadius: BorderRadius.circular(15)
                 ),
                 child: Row(
                   children: [
                      Expanded(
                       flex: 1,
                       child:  Container(clipBehavior: Clip.antiAliasWithSaveLayer,
                         decoration: const BoxDecoration(
                             borderRadius: const BorderRadius.only(
                               topRight: const Radius.circular(15)
                             )
                         ),
                         child: const Image(
                           image: NetworkImage('https://img.freepik.com/free-photo/turkish-arabic-traditional-ramadan-mix-kebab-plate-kebab-adana-chicken-lamb-beef-lavash-bread-with-sauce-top-view_2829-6169.jpg?w=1060&t=st=1669300834~exp=1669301434~hmac=6d5562bc67a4e966d462361fd7ba7a21bf8cbba50204ec3fdb5bce4c1e67807d'),

                         ),
                       ),),
                     Expanded(
                       flex: 2,
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 8),
                         child: Row(
                           children: [
                             Column(
                               children: [
                                 Row(
                                   children:const [
                                     Text('kebab adana',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                                   ],
                                 ),
                                 const SizedBox(height: 7,),
                                 Row(
                                   children: const [
                                     Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                                     Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                                     Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                                     Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                                     Icon(FontAwesomeIcons.solidStarHalfStroke,color: Colors.amberAccent,size: 13,),

                                   ],
                                 ),

                               ],
                             ),
                             Spacer(),
                             Column(
                               children: [

                                 Text('56',style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 15),),
                                 Text('Rated',style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 15),)
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               );
             } ,itemCount: 5,
             )
           ]
          ),
        ],
      ),
    );
  }
}
