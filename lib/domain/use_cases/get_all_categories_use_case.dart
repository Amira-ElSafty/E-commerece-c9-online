import 'package:dartz/dartz.dart';
import 'package:flutter_app_e_commerece_online/domain/entities/CategoryResponseEntity.dart';
import 'package:flutter_app_e_commerece_online/domain/entities/failures.dart';
import 'package:flutter_app_e_commerece_online/domain/repository/repository/home_repository_contract.dart';

class GetAllCategoriesUseCase{
  HomeRepositoryContract repositoryContract ;
  GetAllCategoriesUseCase({required this.repositoryContract});

  Future<Either<Failures,CategoryResponseEntity>> invoke(){
    return repositoryContract.getAllCategories();
  }
}