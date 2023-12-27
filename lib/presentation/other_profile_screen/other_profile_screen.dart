import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';

class OtherProfileScreen extends StatelessWidget {
  const OtherProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0.06),
              end: Alignment(1.11, 0.15),
              colors: [
                appTheme.amber90001,
                appTheme.orange300,
                appTheme.deepOrange200,
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 14.v),
            child: SizedBox(
              height: 727.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPolygon1,
                    height: 132.v,
                    width: 360.h,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 42.v),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 39.h,
                        vertical: 23.v,
                      ),
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 262.h,
                            margin: EdgeInsets.symmetric(horizontal: 10.h),
                            child: Text(
                              "I am now a retired smoker and I have decided to turn over a new leaf for the greater good",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeDMSansGray900,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Divider(),
                          SizedBox(height: 7.v),
                          Text(
                            "Concession Stats",
                            style: CustomTextStyles.headlineMediumGray90001,
                          ),
                          SizedBox(height: 16.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 23.h,
                              right: 15.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Clean for",
                                      style: CustomTextStyles
                                          .titleMediumBlack90001,
                                    ),
                                    SizedBox(height: 6.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "124",
                                        style: CustomTextStyles
                                            .displayMediumYellow90001,
                                      ),
                                    ),
                                    Text(
                                      "days",
                                      style: CustomTextStyles
                                          .labelLargeDMSansGray900,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Money saved ",
                                      style: CustomTextStyles
                                          .titleSmallBlack90001_1,
                                    ),
                                    SizedBox(height: 6.v),
                                    Text(
                                      "520",
                                      style: CustomTextStyles
                                          .displayMediumYellow90001,
                                    ),
                                    Text(
                                      "MYR",
                                      style: CustomTextStyles
                                          .labelLargeDMSansGray900,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 26.v),
                          Divider(),
                          SizedBox(height: 7.v),
                          Text(
                            "Health Level",
                            style: CustomTextStyles.headlineMediumGray90001,
                          ),
                          SizedBox(height: 120.v),
                          Text(
                            "Badges Earned",
                            style: CustomTextStyles.headlineMediumGray900,
                          ),
                          SizedBox(height: 120.v),
                        ],
                      ),
                    ),
                  ),
                  _buildCleanFor(context),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage6,
                    height: 90.adaptSize,
                    width: 90.adaptSize,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 97.v),
                      child: Text(
                        "Tang Joe Yue",
                        style: CustomTextStyles.headlineLargeOrangeA700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgRightOnprimarycontainer23x32,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildCleanFor(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 5.h,
          right: 6.h,
          bottom: 14.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 133.h),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 5.v,
                  right: 5.h,
                  bottom: 5.v,
                ),
                strokeWidth: 5.h,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.amber900,
                    appTheme.black90001.withOpacity(0),
                    appTheme.amber900,
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(41),
                  topRight: Radius.circular(41),
                  bottomLeft: Radius.circular(41),
                  bottomRight: Radius.circular(41),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 17.v,
                  ),
                  decoration: AppDecoration.outline.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder41,
                  ),
                  child: Text(
                    "31%",
                    style: CustomTextStyles.headlineMediumYellow90001,
                  ),
                ),
              ),
            ),
            SizedBox(height: 17.v),
            Divider(
              indent: 37.h,
              endIndent: 35.h,
            ),
            SizedBox(height: 55.v),
            SizedBox(
              height: 128.v,
              width: 349.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 113.v,
                      width: 349.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.amber900,
                            appTheme.amber900.withOpacity(0.66),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 28.v,
                      width: 89.h,
                      margin: EdgeInsets.only(
                        right: 9.h,
                        bottom: 1.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.black90001,
                        borderRadius: BorderRadius.circular(
                          14.h,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.black90001.withOpacity(0.25),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 59.h),
                      child: Text(
                        "46",
                        style: CustomTextStyles.headlineSmallOrangeA200,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 49.h,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "/",
                        style: CustomTextStyles.titleLargeWhiteA700Medium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 19.h),
                      child: Text(
                        "87",
                        style: CustomTextStyles.headlineSmallWhiteA700Medium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(17.h, 3.v, 12.h, 37.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 66.v,
                            width: 64.h,
                            margin: EdgeInsets.only(
                              top: 21.v,
                              bottom: 1.v,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBase,
                                  height: 66.v,
                                  width: 64.h,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgInner,
                                  height: 46.v,
                                  width: 44.h,
                                  radius: BorderRadius.circular(
                                    5.h,
                                  ),
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 9.v),
                                ),
                                Opacity(
                                  opacity: 0.74,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgHighlight,
                                    height: 54.v,
                                    width: 52.h,
                                    radius: BorderRadius.circular(
                                      13.h,
                                    ),
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: 5.v),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgMaskGroup,
                                  height: 46.v,
                                  width: 44.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 8.v),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 67.v,
                            width: 68.h,
                            margin: EdgeInsets.only(
                              top: 19.v,
                              bottom: 1.v,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 67.v,
                                    width: 68.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        34.h,
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.orange200,
                                          appTheme.deepOrange800,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: OutlineGradientButton(
                                    padding: EdgeInsets.only(
                                      left: 10.h,
                                      top: 10.v,
                                      right: 10.h,
                                      bottom: 10.v,
                                    ),
                                    strokeWidth: 10.h,
                                    gradient: LinearGradient(
                                      begin: Alignment(0.5, 0),
                                      end: Alignment(0.5, 1),
                                      colors: [
                                        appTheme.deepOrange80001,
                                        appTheme.deepOrange20001,
                                      ],
                                    ),
                                    corners: Corners(
                                      topLeft: Radius.circular(22),
                                      topRight: Radius.circular(22),
                                      bottomLeft: Radius.circular(22),
                                      bottomRight: Radius.circular(22),
                                    ),
                                    child: Container(
                                      height: 43.v,
                                      width: 44.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          22.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.black90001
                                                .withOpacity(0.2),
                                            appTheme.black90001
                                                .withOpacity(0.2),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.25,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 51.v,
                                      width: 52.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          26.h,
                                        ),
                                        border: Border.all(
                                          color: appTheme.whiteA700
                                              .withOpacity(0.44),
                                          width: 1.h,
                                          strokeAlign: strokeAlignOutside,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMaskGroupWhiteA700,
                                  height: 43.v,
                                  width: 44.h,
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 63.v,
                            width: 70.h,
                            margin: EdgeInsets.only(
                              top: 18.v,
                              bottom: 7.v,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBase,
                                  height: 63.v,
                                  width: 70.h,
                                  radius: BorderRadius.circular(
                                    11.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgInner42x48,
                                  height: 42.v,
                                  width: 48.h,
                                  radius: BorderRadius.circular(
                                    5.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Opacity(
                                  opacity: 0.88,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgHighlight51x56,
                                    height: 51.v,
                                    width: 56.h,
                                    radius: BorderRadius.circular(
                                      14.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMaskGroupBlueGray100,
                                  height: 42.v,
                                  width: 48.h,
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 88.v,
                            width: 68.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBase69x63,
                                  height: 69.v,
                                  width: 63.h,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  alignment: Alignment.bottomLeft,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgInner45x42,
                                  height: 45.v,
                                  width: 42.h,
                                  radius: BorderRadius.circular(
                                    5.h,
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 11.h,
                                    bottom: 12.v,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.42,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgHighlights,
                                    height: 53.v,
                                    width: 47.h,
                                    radius: BorderRadius.circular(
                                      13.h,
                                    ),
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(
                                      left: 8.h,
                                      bottom: 8.v,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgMaskGroupBlueGray10045x41,
                                  height: 45.v,
                                  width: 41.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 10.h,
                                    bottom: 11.v,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 2.v,
                                          bottom: 3.v,
                                        ),
                                        child: Text(
                                          "View All",
                                          style: CustomTextStyles
                                              .labelMediumWhiteA700Medium,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgRightOnprimarycontainer,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 3.h),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
