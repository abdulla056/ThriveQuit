import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore: must_be_immutable
class ForumItemWidget extends StatelessWidget {
  const ForumItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage7,
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                ),
                Container(
                  height: 23.v,
                  width: 57.h,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    top: 3.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Joe Yue",
                          style: CustomTextStyles.labelMediumBlack90001,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Dec 12",
                          style: CustomTextStyles.labelSmallRed50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Posted:",
                          style: CustomTextStyles.labelSmallGray90001,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 284.h,
            margin: EdgeInsets.only(right: 31.h),
            child: Text(
              "Ex-smokers, what was your secret to finally quit smoking?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
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
                    "234",
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgChatBubbleOva,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "16",
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
