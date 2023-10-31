import 'package:flutter_app_e_commerece_online/data/repository/auth_repository/repository/auth_repository_impl.dart';
import 'package:flutter_app_e_commerece_online/data/repository/auth_repository/repository/home_repository_impl.dart';
import 'package:flutter_app_e_commerece_online/domain/repository/data_source/auth_remote_data_source.dart';
import 'package:flutter_app_e_commerece_online/domain/repository/data_source/home_remote_data_source.dart';
import 'package:flutter_app_e_commerece_online/domain/repository/repository/auth_repository_contract.dart';
import 'package:flutter_app_e_commerece_online/domain/repository/repository/home_repository_contract.dart';
import 'package:flutter_app_e_commerece_online/domain/use_cases/get_all_categories_use_case.dart';
import 'package:flutter_app_e_commerece_online/domain/use_cases/login_use_case.dart';
import 'package:flutter_app_e_commerece_online/domain/use_cases/register_use_case.dart';
import '../data/api/api_manager.dart';
import '../data/repository/auth_repository/data_source/auth_remote_data_source_impl.dart';
import '../data/repository/auth_repository/data_source/home_remote_data_source_impl.dart';

AuthRepositoryContract injectAuthRepositoryContract(){
  return AuthRepositoryImpl(remoteDataSource: injectAuthRemoteDataSource());
}
AuthRemoteDataSource injectAuthRemoteDataSource(){
  return AuthRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}
RegisterUseCase injectRegisterUseCase(){
  return RegisterUseCase(repositoryContract: injectAuthRepositoryContract());
}
LoginUseCase injectLoginUseCase() {
  return LoginUseCase(repositoryContract: injectAuthRepositoryContract());
}
GetAllCategoriesUseCase injectGetAllCategoriesUseCase() {
  return GetAllCategoriesUseCase(repositoryContract: injectHomeRepositoryContract());
}
HomeRepositoryContract injectHomeRepositoryContract(){
  return HomeRepositoryImpl(remoteDataSource: injectHomeRemoteDataSource());
}
HomeRemoteDataSource injectHomeRemoteDataSource(){
  return HomeRemoteDataSourceImpl(apiManager: ApiManager.getInstance());
}
