import 'package:flutter_app_e_commerece_online/data/model/response/RegisterResponse.dart';
import 'package:flutter_app_e_commerece_online/data/repository/auth_repository/data_source/auth_remote_data_source_impl.dart';
import 'package:flutter_app_e_commerece_online/domain/repository/data_source/auth_remote_data_source.dart';
import 'package:flutter_app_e_commerece_online/domain/repository/repository/auth_repository_contract.dart';

class AuthRepositoryImpl implements AuthRepositoryContract{
  AuthRemoteDataSource remoteDataSource ;
  AuthRepositoryImpl({required this.remoteDataSource});
  @override
  Future<RegisterResponse> register(String name, String email, String password, String rePassword, String phone) {
    return remoteDataSource.register(name, email, password, rePassword, phone);
  }

}
AuthRepositoryContract injectAuthRepositoryContract(){
  return AuthRepositoryImpl(remoteDataSource: injectAuthRemoteDataSource());
}