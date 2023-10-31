import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app_e_commerece_online/ui/utils/my_colors.dart';
class CategoriesRowWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            "Categories",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppColors.darkPrimaryColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            )
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "View all",
            style:
            Theme.of(context).textTheme.titleMedium!.copyWith (
              color: AppColors.darkPrimaryColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
