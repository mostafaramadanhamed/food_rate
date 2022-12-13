import 'package:dio/dio.dart';

class DioHelper{

 late Dio dio;
 DioHelper(){
   BaseOptions baseOptions=BaseOptions(
     baseUrl: 'base url',
     receiveTimeout: 15*1000,
     sendTimeout: 15*1000,
     receiveDataWhenStatusError: true,
   );
dio=Dio(baseOptions);
 }

 Future<Response>getDate ({
  required String url,
    Map<String,dynamic>?query,
})async{
  dio.options.headers  =
  {
    'Content-Type': 'application/json',
  };
  return await dio.get(
    url,
    queryParameters: query,
  );
}
}