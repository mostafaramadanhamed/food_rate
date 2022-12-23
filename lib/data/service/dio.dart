import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:food_rate/const/strings.dart';

class DioHelper{

 late Dio dio;
 DioHelper(){
   BaseOptions baseOptions=BaseOptions(
     baseUrl: MyStrings.baseUrl,
     receiveTimeout: 15*1000,
     sendTimeout: 15*1000,
     receiveDataWhenStatusError: true,
   );
dio=Dio(baseOptions);
 }
 Future<List<dynamic>>getAllMeals()async{
   try{

     Response response=await dio.get(MyStrings.meals);
     return response.data;
   }
   catch(ex){
     debugPrint('Error in $ex');
     return [];
   }
 }
 Future<Map<String,dynamic>>register({
  required String username,
   required String password,
})async{
   try{
     Response response =await dio.post(
         MyStrings.users,
       data: {
           'username':username,
         'password':password,
       }
     );debugPrint(response.data.toString());
     return response.data;

   }
       catch(ex){
     debugPrint('error in register $ex');
     return{};
       }
 }
 Future<Map<String,dynamic>>mealRating({
  required int id,
   required int stars,
})async{
   try{


     Response response =await dio.post(
         '${MyStrings.meals}$id${MyStrings.rating}',
       data: {
           'stars':stars,
       },
     );
     dio.options.headers =
     {
       'Authorization': 'Token f7be108a6dbf1d4e632567d010b9ee2a4b9f8111',
     };
     return response.data;
   }
       catch(ex){
     debugPrint('error in Rating $ex');
     return {} ;
       }
 }
//   Future<Response> postData({required int id,required int stars}) async
//  {
//    dio.options.headers =
//    {
//      'Authorization': 'Token d9aadca80c238cb79fff10cb2e6670cc067440aa',
//    };
//
//    return dio.post(
//      MyStrings.meals+id.toString()+MyStrings.rating,
//      data: {
//        'stars':stars
//      },
//    );
//  }


}