
import 'package:flutter_app_e_commerece_online/data/model/response/RegisterResponse.dart';

abstract class RegisterStates{}
class RegisterInitialState extends RegisterStates{}
class RegisterLoadingState extends RegisterStates{
  String? loadingMessage ;
  RegisterLoadingState({this.loadingMessage});
}
class RegisterErrorState extends RegisterStates{
  String? errorMessage ;
  RegisterErrorState({this.errorMessage});
}
class RegisterSucuessState extends RegisterStates{
  RegisterResponse response ;
  RegisterSucuessState({required this.response});
}