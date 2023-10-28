import 'package:flutter_app_e_commerece_online/data/model/response/RegisterResponse.dart';

abstract class AuthRepositoryContract{
  Future<RegisterResponse> register(String name, String email, String password,
      String rePassword, String phone);

  // login
}