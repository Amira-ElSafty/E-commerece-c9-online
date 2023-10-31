import 'package:flutter/material.dart';
import 'package:flutter_app_e_commerece_online/ui/home/widgets/custom_search_with_shopping_cart.dart';
import 'package:flutter_app_e_commerece_online/ui/utils/my_assets.dart';
import 'package:flutter_app_e_commerece_online/ui/utils/my_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductListTab extends StatelessWidget {
  const ProductListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
            mainAxisSize: MainAxisSize.min,
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
                height: 24.h,
              ),
              // Expanded(
              //   child: GridView.builder(
              //     itemCount: dummyItemData.length,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2,
              //         childAspectRatio: 2 / 2.8,
              //         crossAxisSpacing: 16.w,
              //         mainAxisSpacing: 16.h),
              //     itemBuilder: (context, index) {
              //       return InkWell(
              //         splashColor: Colors.transparent,
              //         hoverColor: Colors.transparent,
              //         highlightColor: Colors.transparent,
              //         onTap: () {
              //           Navigator.pushNamed(
              //               context, ProductDetailsView.routeName,
              //               arguments: dummyItemData[index]);
              //         },
              //         child: GridViewCardItem(
              //           dummyItemModel: dummyItemData[index],
              //         ),
              //       );
              //     },
              //   ),
              // ),
            ]),
      ),
    );
  }
}
