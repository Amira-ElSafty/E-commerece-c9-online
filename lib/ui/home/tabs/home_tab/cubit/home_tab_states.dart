import 'package:flutter_app_e_commerece_online/domain/entities/CategoryResponseEntity.dart';

abstract class HomeTabStates {}

class HomeTabInitialStates extends HomeTabStates {}

class HomeTabCategoryLoadingStates extends HomeTabStates {
  String? loadingMessage ;
  HomeTabCategoryLoadingStates({this.loadingMessage});
}

class HomeTabCategoryErrorStates extends HomeTabStates {
  String? errorMessage ;
  HomeTabCategoryErrorStates({this.errorMessage});
}

class HomeTabCategorySuccessStates extends HomeTabStates {
  CategoryResponseEntity categoryEntity ;
  HomeTabCategorySuccessStates({required this.categoryEntity});
}
