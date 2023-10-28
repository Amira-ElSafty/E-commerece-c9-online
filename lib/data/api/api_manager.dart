import 'dart:convert';
import 'package:flutter_app_e_commerece_online/data/api/api_constants.dart';
import 'package:flutter_app_e_commerece_online/data/model/request/RegisterRequest.dart';
import 'package:flutter_app_e_commerece_online/data/model/response/RegisterResponse.dart';
import 'package:http/http.dart' as http;
class ApiManager{

  ApiManager._();
  static ApiManager? _instance ;
  static ApiManager getInstance(){
    _instance ??= ApiManager._();
    return _instance!;
  }
/*
https://ecommerce.routemisr.com/api/v1/auth/signup
 */
   Future<RegisterResponse> register(String name, String email, String password,
      String rePassword, String phone)async{
    Uri url = Uri.https(Apiconstants.baseUrl,Apiconstants.registerApi);
    var requestBody = RegisterRequest(
        name: name,
        email: email,
        rePassword: rePassword,
        phone: phone,
        password: password
    );
    var response = await http.post(url,body: requestBody.toJson());
    var responseBody = response.body ;
    var json = jsonDecode(responseBody);
    return RegisterResponse.fromJson(json);



  }
}