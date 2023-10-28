import 'package:flutter_app_e_commerece_online/data/api/api_manager.dart';
import 'package:flutter_app_e_commerece_online/data/model/response/RegisterResponse.dart';
import 'package:flutter_app_e_commerece_online/domain/repository/data_source/auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
  ApiManager apiManager ;
  AuthRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<RegisterResponse> register(String name, String email,
      String password, String rePassword, String phone) async{
    var response = await apiManager.register(name, email, password, rePassword, phone);
    return response ;
  }
}
AuthRemoteDataSource injectAuthRemoteDataSource(){
  return AuthRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}