import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

class CredentialsPage2Screen extends StatelessWidget {
  const CredentialsPage2Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 0.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 292.h,
                  margin: EdgeInsets.only(left: 5.h, right: 30.h, top: 10.v),
                  child: Text(
                    "Give us some basic information",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        theme.textTheme.headlineLarge?.copyWith(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(height: 38.v),
              _buildBasicInfo(context),
              SizedBox(height: 41.v),
              _buildHeightInfo(context),
              SizedBox(height: 41.v),
              _buildWeightInfo(context),
              SizedBox(height: 64.v),
              Padding(
                padding: EdgeInsets.only(right: 13.h),
                child: CustomIconButton(
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  padding: EdgeInsets.all(13.h),
                  decoration: IconButtonStyleHelper.fillOrange,
                  alignment: Alignment.centerRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBasicInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 15.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 132.adaptSize,
                    width: 132.adaptSize,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 132.adaptSize,
                            width: 132.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 53.h,
                              vertical: 30.v,
                            ),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 70.v,
                              width: 23.h,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.v,
                            right: 10.h,
                          ),
                          child: CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillGray,
                            alignment: Alignment.topRight,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIc24Check1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "Male",
                    style: CustomTextStyles.titleSmallGray900Medium,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Column(
                children: [
                  Container(
                    height: 132.adaptSize,
                    width: 132.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 49.h,
                      vertical: 29.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 70.v,
                      width: 30.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "Female",
                    style: CustomTextStyles.titleSmallGray900Medium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeightInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Height",
              style: CustomTextStyles.titleLargeGray900_1,
            ),
          ),
          SizedBox(height: 21.v),
          SizedBox(
            height: 54.8.v,
            width: 295.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.v),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroupGray900,
                          height: 15.v,
                          width: 5.h,
                        ),
                        SizedBox(height: 5.v),
                        Divider(
                          color: appTheme.gray900.withOpacity(0.15),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 44.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "180cm",
                              style: CustomTextStyles.titleMediumGray900_1,
                            ),
                            SizedBox(height: 7.v),
                            Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  20.h,
                                ),
                                border: Border.all(
                                  color: appTheme.gray900,
                                  width: 3.h,
                                ),
                              ),
                            ),
                          ],
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgUser,
                          height: 30.v,
                          width: 9.h,
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 18.v,
                          ),
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
              left: 4.h,
              right: 7.h,
            ),
            child: _buildWeight(
              context,
              text1: "50cm",
              text2: "500cm",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeightInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Weight",
              style: CustomTextStyles.titleLargeGray900_1,
            ),
          ),
          SizedBox(height: 21.v),
          SizedBox(
            height: 54.8.v,
            width: 295.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup18,
                          height: 30.v,
                          width: 295.h,
                        ),
                        SizedBox(height: 5.v),
                        Divider(
                          color: appTheme.gray900.withOpacity(0.15),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 85.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "80kg",
                          style: CustomTextStyles.titleMediumGray900_1,
                        ),
                        SizedBox(height: 6.v),
                        Container(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(
                              12.h,
                            ),
                            border: Border.all(
                              color: appTheme.gray900,
                              width: 3.h,
                            ),
                          ),
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
              left: 3.h,
              right: 8.h,
            ),
            child: _buildWeight(
              context,
              text1: "20kg",
              text2: "200kg",
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWeight(
    BuildContext context, {
    required String text1,
    required String text2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: CustomTextStyles.labelLargeDMSansGray900_4.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          text2,
          style: CustomTextStyles.labelLargeDMSansGray900_4.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }
}
