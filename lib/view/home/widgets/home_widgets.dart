import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Container buildItemVHome(int index, BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15)
    ),
    child: Row(
      children: [
        buildExpandedImageItemHome(index),
        buildItemNameAndRateHome(index, context),
      ],
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
      itemCount: images.length,

    ),
  );
}
Container buildItemHHome(BuildContext context,int index) {
  return Container(
    
    margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20)
    ),
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
            child:  Image(fit: BoxFit.fitWidth,
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
                       Container(

                         child: Text(names[index],style:const TextStyle(
                              fontSize: 15,fontWeight: FontWeight.w500,
                              overflow: TextOverflow.fade,
                            ),softWrap: false,
                              maxLines: 1,),
                       ),
                      Row(
                        children: const[  Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                          Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                          Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                          Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 14),
                          Icon(FontAwesomeIcons.solidStarHalfStroke,color: Colors.amberAccent,size: 13,),],
                      ),
                      ],
                    ),
                    const SizedBox(height: 7,),

                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
List<String>names=[
  'Kebab',
  'Tagine lamb meat and pumpkin.',
  'Chicken Biryani',
  'Mixture Pizza',
  'Tortilla wrap with Falafel Fresh Salad',
];
List<String>images=[
 'https://img.freepik.com/free-photo/turkish-arabic-traditional-ramadan-mix-kebab-plate-kebab-adana-chicken-lamb-beef-lavash-bread-with-sauce-top-view_2829-6169.jpg?w=1060&t=st=1669300834~exp=1669301434~hmac=6d5562bc67a4e966d462361fd7ba7a21bf8cbba50204ec3fdb5bce4c1e67807d',
  'https://img.freepik.com/free-photo/traditional-tajine-dishes-couscous-fresh-salad-rustic-wooden-table-tagine-lamb-meat-pumpkin-top-view-flat-lay_2829-6116.jpg?w=1380&t=st=1669365344~exp=1669365944~hmac=a46eb5e4ef561e1925471e51b390e69dd1fa5f33c37857eb640eae1f1e47ac30',
  'https://img.freepik.com/premium-photo/homemade-chicken-biryani-blue-surface_158388-221.jpg?w=1060',
  'https://img.freepik.com/premium-photo/delicious-mixture-pizza-italian-food_550617-15185.jpg?w=1060',
  'https://img.freepik.com/free-photo/tortilla-wrap-with-falafel-fresh-salad-vegan-tacos-vegetarian-healthy-food_2829-6193.jpg?w=1060&t=st=1669365626~exp=1669366226~hmac=746ca1ce909bc915a8fb7849369420b3c907e5b2c73658c128b4561a138a1aa5'
];
List<int>rating=[
  100,
  56,
  1788,
  3,
  0,
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
            flex: 4,
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
            child: Column(
              children: [

                Text(rating[index].toString(),style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 15),),
                Text('Rated',style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 15),)
              ],
            ),
            flex: 1,
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

AppBar buildAppBarHome() {
  return AppBar(
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
  );
}