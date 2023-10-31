import 'package:flutter_app_e_commerece_online/domain/entities/CategoryResponseEntity.dart';
import 'package:flutter_app_e_commerece_online/domain/use_cases/get_all_categories_use_case.dart';
import 'package:flutter_app_e_commerece_online/ui/home/tabs/home_tab/cubit/home_tab_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabViewModel extends Cubit<HomeTabStates>{
  GetAllCategoriesUseCase getAllCategoriesUseCase ;
  HomeTabViewModel({required this.getAllCategoriesUseCase}):super(HomeTabInitialStates());

  List<DataEntity>? categoriesList ;
  void getCategories()async{
    emit(HomeTabCategoryLoadingStates());
    var either = await getAllCategoriesUseCase.invoke();
    either.fold((l) {
      emit(HomeTabCategoryErrorStates(errorMessage: l.errorMessage));
    },
            (response) {
      categoriesList = response.data??[];
      emit(HomeTabCategorySuccessStates(categoryEntity: response));
            });
  }

}