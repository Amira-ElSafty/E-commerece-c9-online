import 'package:flutter/material.dart';
import 'package:flutter_app_e_commerece_online/domain/entities/CategoryResponseEntity.dart';
import 'package:flutter_app_e_commerece_online/ui/utils/my_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  DataEntity dataEntity;
  CategoryItem({required this.dataEntity});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 8,
          child: CircleAvatar(
            backgroundImage: NetworkImage(dataEntity.image??""),
            radius: 50.r,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Expanded(
          flex: 2,
          child: Text(
            dataEntity.name??'',
            textWidthBasis: TextWidthBasis.longestLine,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 14.sp,
              color: AppColors.darkPrimaryColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        )
      ],
    );
  }

}
