import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_rate/Presentation/about%20us%20screen.dart';


Container buildItemVHome(int index, BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15)
    ),
    child: Container( color:Theme.of(context).backgroundColor,
      child: Row(
        children: [
          buildExpandedImageItemHome(index),
          buildItemNameAndRateHome(index, context),
        ],
      ),
    ),
  );
}

SizedBox buildListViewHHome(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height/4,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder:(context,index)=>buildItemHHome(context,index),
      scrollDirection: Axis.horizontal,
      itemCount: names.length,

    ),
  );
}
Container buildItemHHome(BuildContext context,int index) {
  return Container(

    margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20)
    ),
    child: Container(
      color:Theme.of(context).backgroundColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(
        flex: 3,
        child:  Container(clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15)
              )
          ),
          child:  Image(
            image: NetworkImage(images[index]),

          ),
        ),),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width/4.5,
                           child: Text(names[index],style:const TextStyle(
                                fontSize: 15,fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis,
                              ),softWrap: false,
                                maxLines: 1,),
                         ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [const  Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),


                           SizedBox(width:MediaQuery.of(context).size.width/80),
                          Text(rating[index].toString(),textAlign: TextAlign.end,)
                          ],
                        ),
                        ],
                      ),


                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
List<String>names=[
  'Kebab',
  'Tagine lamb meat and pumpkin.',
  'Chicken Biryani',
  'Mixture Pizza',
  'Tortilla wrap with Falafel Fresh Salad',
  'Mini chocolate sufle cupcakes',
  'Strawberry milkshake',
  'Chocolate milkshake',
];
List<String>images=[
 'https://img.freepik.com/free-photo/turkish-arabic-traditional-ramadan-mix-kebab-plate-kebab-adana-chicken-lamb-beef-lavash-bread-with-sauce-top-view_2829-6169.jpg?w=1060&t=st=1669300834~exp=1669301434~hmac=6d5562bc67a4e966d462361fd7ba7a21bf8cbba50204ec3fdb5bce4c1e67807d',
  'https://img.freepik.com/free-photo/traditional-tajine-dishes-couscous-fresh-salad-rustic-wooden-table-tagine-lamb-meat-pumpkin-top-Presentation-flat-lay_2829-6116.jpg?w=1380&t=st=1669365344~exp=1669365944~hmac=a46eb5e4ef561e1925471e51b390e69dd1fa5f33c37857eb640eae1f1e47ac30',
  'https://img.freepik.com/premium-photo/homemade-chicken-biryani-blue-surface_158388-221.jpg?w=1060',
  'https://img.freepik.com/premium-photo/delicious-mixture-pizza-italian-food_550617-15185.jpg?w=1060',
  'https://img.freepik.com/free-photo/tortilla-wrap-with-falafel-fresh-salad-vegan-tacos-vegetarian-healthy-food_2829-6193.jpg?w=1060&t=st=1669365626~exp=1669366226~hmac=746ca1ce909bc915a8fb7849369420b3c907e5b2c73658c128b4561a138a1aa5',
'https://img.freepik.com/free-photo/mini-chocolate-sufle-cupcakes-with-raspberries_114579-53083.jpg?w=1060&t=st=1669452251~exp=1669452851~hmac=5c2a10c7d40b2ef32b10cad927e04ed2a7e695055811c154dec8887a0ad07930',
'https://img.freepik.com/free-photo/front-Presentation-strawberry-milkshake-with-copy-space_23-2148707843.jpg?w=996&t=st=1669452482~exp=1669453082~hmac=7b532ee6c75e527b61a48b7bfaff75f6fc50fd91f99e28e4dd503b50e761d14d',
  'https://img.freepik.com/free-photo/high-angle-chocolate-milkshake-glass-with-pretzels-straws_23-2148707839.jpg?w=740&t=st=1669452575~exp=1669453175~hmac=5cafc0e48f91b555092deee06c160774433b1c220500ef6ade11b69d3dacab2a',

];
List<int>rating=[
  100,
  56,
  1788,
  3,
  55,
  5686,
  387,
  126,
];

ListView buildListViewVHome() {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder:(context,index){
      return  buildItemVHome(index, context);
    } ,itemCount: names.length,
  );
}
Expanded buildItemNameAndRateHome(int index, BuildContext context) {
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
                      child: Text(names[index],style:const TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis,

                      ),softWrap: false,
                        maxLines: 1,),
                    ),
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
          ),
          const Spacer(),
          Expanded(
            flex: 1,
            child: Column(
              children: [

                Text(rating[index].toString(),style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 15),),
                Text('Rated',style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 15),)
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Expanded buildExpandedImageItemHome(int index) {
  return Expanded(
    flex: 1,
    child:  Container(clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15)
          )
      ),
      child:  Image(
        image: NetworkImage(images[index]),

      ),
    ),);
}

AppBar buildAppBarHome(context) {
  return AppBar(

    title: const Text('Home',style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const AboutUsScreen()));
          },
          icon: const Icon(
            Icons.info_outline_rounded,
            color: Colors.black,
          )),
    ],
    elevation: 0,
  );
}