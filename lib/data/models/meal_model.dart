class Meal{
  late int id;
  late String name;
  late String disc;
  late String img;
  late double avgRating;
  late int noRating;

  //ToDo add value to json from api
  Meal.fromJson(Map<String,dynamic>json){
    id= json[''];
    name= json[''];
    disc= json[''];
    img= json[''];
    avgRating= json[''];
    noRating= json[''];
  }
}