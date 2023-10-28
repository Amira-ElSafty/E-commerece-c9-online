import 'package:flutter_app_e_commerece_online/data/model/response/RegisterResponse.dart';
import 'package:flutter_app_e_commerece_online/data/repository/auth_repository/repository/auth_repository_impl.dart';
import 'package:flutter_app_e_commerece_online/domain/repository/repository/auth_repository_contract.dart';

class RegisterUseCase{
  AuthRepositoryContract repositoryContract ;
  RegisterUseCase({required this.repositoryContract});
  /// register
  Future<RegisterResponse> invoke(String name, String email, String password,
      String rePassword, String phone){
    return repositoryContract.register(name, email, password, rePassword, phone);
  }
}
RegisterUseCase injectRegisterUseCase(){
  return RegisterUseCase(repositoryContract: injectAuthRepositoryContract());
}