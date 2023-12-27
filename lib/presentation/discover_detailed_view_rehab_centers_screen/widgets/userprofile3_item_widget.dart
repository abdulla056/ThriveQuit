import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900015.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 105.v,
            width: 309.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage3,
                  height: 77.v,
                  width: 309.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(10.h),
                  ),
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(91.h, 81.v, 10.h, 2.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Text(
                            "Rehab Center 1",
                            style:
                                CustomTextStyles.labelLargeDMSansBluegray90003,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgHeartRewardSOrange90001,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 18.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.outlineBlack900016.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Type :",
                            style: CustomTextStyles.labelMediumWhiteA700,
                          ),
                        ),
                        Text(
                          "Outpatient",
                          style: CustomTextStyles.labelMediumBlack9000110,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 21.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Container(
                  width: 109.h,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "Location : Lecture Theater 2, Taylor’s Lakeside Campus",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelSmallBluegray90003,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
