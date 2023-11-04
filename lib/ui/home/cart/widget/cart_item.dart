import 'package:flutter/material.dart';
import 'package:flutter_app_e_commerece_online/ui/utils/my_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  String title;
  String imagepath;
  int price;
  String color;
  int size;
  int quantity;

  CartItem(
      {required this.title,
      required this.imagepath,
      required this.color,
      required this.size,
      required this.price,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 24.h),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(width: 1.w, color: AppColors.lightGreyColor)),
        width: 398.w,
        height: 145.h,
        child: Row(children: [
          Container(
            clipBehavior: Clip.antiAlias,
            height: 145.h,
            width: 130.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Image.asset(imagepath, fit: BoxFit.fill),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: 8.w, right: 8.w),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            //logic here
                          },
                          child: Icon(
                            Icons.delete_outline,
                            color: AppColors.primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 13.h, bottom: 13.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Icon(
                            Icons.circle,
                            color: AppColors.redColor,
                            size: 15.w,
                          ),
                        ),
                        Text(color,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: AppColors.blueGreyColor)),
                        Padding(
                          padding: EdgeInsets.only(left: 1.w, right: 3.w),
                          child: Container(
                            width: 2.w,
                            height: 15.h,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Text('Size: $size',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: AppColors.blueGreyColor)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 14.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('EGP $price',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold)),

                          Container(
                            height: 50.h,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(
                                100.r,
                              ),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove_circle_outline_rounded,
                                    color: AppColors.whiteColor,
                                    size: 28.sp,
                                  ),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.whiteColor),
                                ),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: AppColors.whiteColor,
                                    size: 28.sp,
                                  ),
                                ),
                              ],
                            ),
                          )

                          // Container(
                          //   height: 42.h,
                          //   width: 122.w,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(20.r),
                          //       color: Theme.of(context).primaryColor),
                          //   child: Row(
                          //     mainAxisAlignment:
                          //         MainAxisAlignment.spaceEvenly,
                          //     children: [
                          //       InkWell(
                          //         onTap: () {
                          //           //logic here
                          //         },
                          //         child: Icon(Icons.remove_circle_outline,
                          //             size: 20.w,
                          //             color: AppColors.whiteColor),
                          //       ),
                          //       Text("$quantity",
                          //           style: Theme.of(context)
                          //               .textTheme
                          //               .titleMedium),
                          //       InkWell(
                          //         onTap: () {
                          //           //logic here
                          //         },
                          //         child: Icon(Icons.add_circle_outline,
                          //             size: 20.w,
                          //             color: AppColors.whiteColor),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                ]),
          )),
        ]),
      ),
    );
  }
}
