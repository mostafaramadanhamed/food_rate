import 'package:dio/dio.dart';
import 'package:food_rate/const/strings.dart';

class DioHelper{

 late Dio dio;
 DioHelper(){
   BaseOptions baseOptions=BaseOptions(
     baseUrl: Strings.baseUrl,
     receiveTimeout: 15*1000,
     sendTimeout: 15*1000,
     receiveDataWhenStatusError: true,
   );
dio=Dio(baseOptions);
 }
//
//  Future<Response>getDate ({
//   required String url,
//     Map<String,dynamic>?query,
// })async{
//   dio.options.headers  =
//   {
//     'Content-Type': 'application/json',
//   };
//   return await dio.get(
//     url,
//     queryParameters: query,
//   );
// }
 Future<List<dynamic>>getAllMeals()async{
   try{

     Response response=await dio.get('meals');
     return response.data;
   }
   catch(ex){
     print('Error in $ex');
     return [];
   }
 }
}