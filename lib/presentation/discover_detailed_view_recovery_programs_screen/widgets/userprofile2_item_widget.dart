import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
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
            height: 103.v,
            width: 309.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
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
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 65.v,
                      right: 10.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: appTheme.orangeA200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Container(
                            height: 38.v,
                            width: 81.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 1.v,
                            ),
                            decoration:
                                AppDecoration.outlineBlack900017.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Text(
                                      "12",
                                      style: CustomTextStyles
                                          .labelLargeDMSansWhiteA700Bold_1,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 1.h),
                                    child: Text(
                                      "am",
                                      style: CustomTextStyles
                                          .labelLargeDMSansGray90001,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    height: 31.v,
                                    width: 46.h,
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            "Jun",
                                            style: CustomTextStyles
                                                .labelLargeDMSansGray900Bold_2,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            "10:30",
                                            style: CustomTextStyles
                                                .labelLargeDMSansWhiteA700Bold_1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11.h,
                            top: 18.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "Recovery Program 1",
                            style:
                                CustomTextStyles.labelLargeDMSansBluegray90003,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgHeartRewardSOrange90001,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                          margin: EdgeInsets.only(top: 17.v),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
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
