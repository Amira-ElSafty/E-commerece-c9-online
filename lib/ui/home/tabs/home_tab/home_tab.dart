import 'package:flutter/material.dart';
import 'package:flutter_app_e_commerece_online/domain/di.dart';
import 'package:flutter_app_e_commerece_online/ui/home/tabs/home_tab/cubit/home_tab_states.dart';
import 'package:flutter_app_e_commerece_online/ui/home/tabs/home_tab/cubit/home_tab_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../category/categories_section.dart';
import '../../widgets/annountcements_section.dart';
import '../../widgets/home_appliances_section.dart';

class HomeTab extends StatelessWidget {
  HomeTabViewModel viewModel = HomeTabViewModel(
      getAllCategoriesUseCase: injectGetAllCategoriesUseCase());
  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: viewModel..getCategories(),
      listener: (context,state){

      },
        builder: (context, state) {
          if(state is HomeTabCategoryLoadingStates){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else if(state is HomeTabCategoryErrorStates){
            return Text(state.errorMessage??"error");
          }else if(state is HomeTabCategorySuccessStates){
            return  CategoriesSection(categoryList: viewModel.categoriesList!,);
          }
          return Container();
        });

    /*
    SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Image.asset(
                        MyAssets.logo,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      const CustomSearchWithShoppingCart(),
                      SizedBox(
                        height: 16.h,
                      ),
                      AnnouncementsSection(),
                      SizedBox(
                        height: 16.h,
                      ),
                      CategoriesRowWidget(),
                      SizedBox(
                        height: 24.h,
                      ),
                      CategoriesSection(),
                      SizedBox(
                        height: 24.h,
                      ),
                      HomeAppliancesSection(),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  ),
                ),
              ),
            )
     */
    Column(
      children: [
        AnnouncementsSection(),
        SizedBox(
          height: 24.h,
        ),
        // CategoriesSection(),
        SizedBox(
          height: 24.h,
        ),
        HomeAppliancesSection(),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
