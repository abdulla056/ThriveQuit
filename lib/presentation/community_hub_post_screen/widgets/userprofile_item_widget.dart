import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack900012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            children: [
              CustomIconButton(
                height: 29.adaptSize,
                width: 29.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.outlineBlackTL14,
                child: CustomImageView(
                  imagePath: ImageConstant.imgUserSingleNeu,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  top: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Abdulla Safar",
                      style: CustomTextStyles.labelMediumBlack90001,
                    ),
                    Row(
                      children: [
                        Text(
                          "Posted:",
                          style: CustomTextStyles.labelSmallGray90001,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Nov 27",
                            style: CustomTextStyles.labelSmallRed50,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Text(
            "It’s all about your mindset, be determined.",
            style: CustomTextStyles.titleSmallBluegray900,
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHeartRewardS,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "89",
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
