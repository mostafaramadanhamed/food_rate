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
 Future<List<dynamic>>register({
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
     );
     return response.data;
   }
       catch(ex){
     debugPrint('error in register $ex');
     return[];
       }
 }

}