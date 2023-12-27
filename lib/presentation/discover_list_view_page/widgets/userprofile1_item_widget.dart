import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900015.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 186.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 102.v,
            width: 186.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage3,
                  height: 77.v,
                  width: 186.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(10.h),
                  ),
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 16.h,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "Recovery Program 1",
                      style: CustomTextStyles.labelLargeDMSansGray900_2,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 9.h),
                    padding: EdgeInsets.symmetric(horizontal: 11.h),
                    decoration: AppDecoration.outlineBlack900016.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "12",
                          style: CustomTextStyles.titleSmallWhiteA70014,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "Jun",
                          style: CustomTextStyles.labelLargeDMSansGray900Bold_2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 135.h,
                child: Text(
                  "Recovery programs offer structured interventions and support systems designed to help individuals ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelSmallGray600,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHeartRewardSOrange90001,
                height: 21.adaptSize,
                width: 21.adaptSize,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 10.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
