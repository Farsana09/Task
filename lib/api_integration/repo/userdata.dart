import 'package:dio/dio.dart';
import 'package:task_project/model/user_model.dart';

class ApiServices{
  Future<dynamic>  fetchUserData() async {
  Dio dio = Dio();

 final url = "https://jsonplaceholder.typicode.com/todos";

try{
 final response = await dio.get(url);
 if(response.statusCode == 200){

final data = response.data;
return  data.map((element) => UserData.fromJson(element)).toList();
 }else{
  print('Failed to load data');
 }
} catch (e) {
 throw Exception(e);
}


}
}