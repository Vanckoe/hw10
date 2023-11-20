import 'package:bloc_with_json/model/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'user_dio.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class UserApiService {
  factory UserApiService(Dio dio, {String baseUrl}) = _UserApiService;

  @GET("/users")
  Future<List<User>> getUsers();
}
