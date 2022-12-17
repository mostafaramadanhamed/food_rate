class Meal {
late  int id;
late  String title;
late String description;
late int noOfRatings;
late int avgRating;
late String image;

  Meal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    noOfRatings = json['no_of_ratings'];
    avgRating = json['avg_rating'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['no_of_ratings'] = noOfRatings;
    data['avg_rating'] = avgRating;
    data['image'] = image;
    return data;
  }
}