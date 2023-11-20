import 'package:bloc_with_json/api/user_dio.dart';
import 'package:bloc_with_json/model/user_model.dart';
import 'package:dio/dio.dart';

class UserRepository {
  final UserApiService _apiService = UserApiService(Dio());

  Future<List<User>> getAllUsers() => _apiService.getUsers();
}
