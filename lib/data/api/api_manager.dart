import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_app_e_commerece_online/data/api/api_constants.dart';
import 'package:flutter_app_e_commerece_online/data/model/request/LoginRequest.dart';
import 'package:flutter_app_e_commerece_online/data/model/request/RegisterRequest.dart';
import 'package:flutter_app_e_commerece_online/data/model/response/CategoryResponseDto.dart';
import 'package:flutter_app_e_commerece_online/data/model/response/LoginResponseDto.dart';
import 'package:flutter_app_e_commerece_online/data/model/response/RegisterResponseDto.dart';
import 'package:flutter_app_e_commerece_online/domain/entities/failures.dart';
import 'package:http/http.dart' as http;
class ApiManager{

  ApiManager._();
  static ApiManager? _instance ;
  static ApiManager getInstance(){
    _instance ??= ApiManager._();
    return _instance!;
  }
   Future<Either<Failures,RegisterResponseDto>> register(String name, String email, String password,
      String rePassword, String phone)async{
     final connectivityResult = await (Connectivity().checkConnectivity());
     if (connectivityResult == ConnectivityResult.mobile ||
         connectivityResult == ConnectivityResult.wifi
     ) {
       // I am connected to a mobile network or wifi .
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
       var registerResponse = RegisterResponseDto.fromJson(json);
       if(response.statusCode >=200 && response.statusCode < 300){
         return Right(registerResponse);
       }else{
         return Left(Failures(errorMessage: registerResponse.error != null ?
             registerResponse.error!.msg
             :registerResponse.message
         ));
       }

     }else {
       /// no internet connection
       return Left(Failures(errorMessage: 'Check Internet connection'));
     }
  }

  Future<Either<Failures,LoginResponseDto>> login( String email, String password,)async{
     final connectivityResult = await (Connectivity().checkConnectivity());
     if (connectivityResult == ConnectivityResult.mobile ||
         connectivityResult == ConnectivityResult.wifi
     ) {
       // I am connected to a mobile network or wifi .
       Uri url = Uri.https(Apiconstants.baseUrl,Apiconstants.loginApi);
       var requestBody = LoginRequest(
           email: email,
           password: password
       );
       var response = await http.post(url,body: requestBody.toJson());
       var responseBody = response.body ;
       var json = jsonDecode(responseBody);
       var loginResponse = LoginResponseDto.fromJson(json);
       if(response.statusCode >=200 && response.statusCode < 300){
         return Right(loginResponse);
       }else{
         return Left(Failures(errorMessage: loginResponse.message));
       }

     }else {
       /// no internet connection
       return Left(Failures(errorMessage: 'Check Internet connection'));
     }
  }


  Future<Either<Failures,CategoryResponseDto>> getAllCategories()async{
     final connectivityResult = await (Connectivity().checkConnectivity());
     if (connectivityResult == ConnectivityResult.mobile ||
         connectivityResult == ConnectivityResult.wifi
     ) {
       // I am connected to a mobile network or wifi .
       Uri url = Uri.https(Apiconstants.baseUrl,Apiconstants.getAllCategoriesApi);
       var response = await http.get(url);
       var responseBody = response.body ;
       var json = jsonDecode(responseBody);
       var categoryResponse = CategoryResponseDto.fromJson(json);
       if(response.statusCode >=200 && response.statusCode < 300){
         return Right(categoryResponse);
       }else{
         return Left(Failures(errorMessage: categoryResponse.message));
       }

     }else {
       /// no internet connection
       return Left(Failures(errorMessage: 'Check Internet connection'));
     }
  }
}