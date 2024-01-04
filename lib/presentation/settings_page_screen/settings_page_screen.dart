import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';

class SettingsPageScreen extends StatelessWidget {
  const SettingsPageScreen({Key? key})
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
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              children: [
                _buildIsabellaTanStack(context),
                SizedBox(height: 21.v),
                SizedBox(
                  height: 725.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 22.h,
                            vertical: 32.v,
                          ),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildFirstNameStack(context),
                              SizedBox(height: 40.v),
                              _buildHeightColumn(context),
                              SizedBox(height: 40.v),
                              _buildCigarettesSmokedStack(context),
                              SizedBox(height: 21.v),
                              Text(
                                "Badges Earned",
                                style: CustomTextStyles.titleMediumGray900,
                              ),
                              SizedBox(height: 121.v),
                            ],
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        height: 31.v,
                        width: 123.h,
                        text: "Edit",
                        margin: EdgeInsets.only(top: 0.v),
                        buttonStyle: CustomButtonStyles.fillDeepOrange,
                        buttonTextStyle: CustomTextStyles.titleSmallOnError,
                        alignment: Alignment.topCenter,
                      ),
                      _buildBadgeBoxStack(context),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding:
                              EdgeInsets.fromLTRB(47.h, 423.v, 70.h, 285.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cigarettes in one packet",
                                style:
                                    CustomTextStyles.labelLargeGray900Medium_2,
                              ),
                              Text(
                                "20",
                                style: CustomTextStyles.labelLargeYellow900,
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
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildIsabellaTanStack(BuildContext context) {
    return SizedBox(
      height: 120.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4191,
            height: 38.v,
            width: 221.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 9.v),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 60.adaptSize,
              width: 60.adaptSize,
              margin: EdgeInsets.only(left: 92.h, top: 60.h),
              padding: EdgeInsets.symmetric(
                horizontal: 0.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillOnError.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder129,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage6,
                height: 54.v,
                width: 52.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 70.v,
                right: 92.h,
              ),
              child: Text(
                "Isabella Tan",
                style: CustomTextStyles.titleLargeGray900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 100.h,
                bottom: 9.v,
              ),
              child: Text(
                "@Isabella_ffanta",
                style: CustomTextStyles.bodyMediumGray900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4190,
            height: 16.v,
            width: 94.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 65.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameColumn(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          left: 6.h,
          right: 11.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 0.v),
            Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                right: 28.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "First Name",
                      style: CustomTextStyles.labelLargeGray900Medium_2,
                    ),
                  ),
                  Text(
                    "Isabella",
                    style: CustomTextStyles.labelLargeYellow900Medium,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                right: 50.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "Last Name",
                      style: CustomTextStyles.labelLargeGray900Medium_2,
                    ),
                  ),
                  Text(
                    "Tan",
                    style: CustomTextStyles.labelLargeYellow900Medium,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Contact Number",
                    style: CustomTextStyles.labelLargeGray900Medium_2,
                  ),
                  Text(
                    "011-16710921",
                    style: CustomTextStyles.labelMediumYellow900_1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.5.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "Date of Birth",
                      style: CustomTextStyles.labelLargeGray900Medium_2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.v, right: 6.h),
                    child: Text(
                      "15/02/2003",
                      style: CustomTextStyles.labelMediumYellow900,
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

  /// Section Widget
  Widget _buildFirstNameStack(BuildContext context) {
    return SizedBox(
      height: 129.v,
      width: 311.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          _buildFirstNameColumn(context),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 33.v, right: 6.h),
              child: SizedBox(
                width: 295.h,
                child: Divider(
                  color: appTheme.gray100,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: SizedBox(
                width: 295.h,
                child: Divider(
                  color: appTheme.gray100,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 32.v, right: 6.h),
              child: SizedBox(
                width: 295.h,
                child: Divider(
                  color: appTheme.gray100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeightColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                right: 41.h,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 11.v,
                      bottom: 10.v,
                    ),
                    child: Text(
                      "Gender",
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 42.v,
                    width: 31.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillAmber.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 40.v,
                      width: 15.h,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: SizedBox(
                      height: 42.v,
                      child: VerticalDivider(
                        width: 2.h,
                        thickness: 2.v,
                        color: appTheme.black90001.withOpacity(0.14),
                        indent: 6.h,
                        endIndent: 6.h,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 30.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 3.v,
                      bottom: 7.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 12.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  height: 45.v,
                  width: 123.h,
                  text: "Height",
                  buttonStyle: CustomButtonStyles.fillOrangeATL10,
                ),
                CustomElevatedButton(
                  height: 45.v,
                  width: 123.h,
                  text: "Weight",
                  margin: EdgeInsets.only(left: 11.h),
                  buttonStyle: CustomButtonStyles.fillOrangeATL10,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.black90001.withOpacity(0.14),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCigarettesSmokedStack(BuildContext context) {
    return SizedBox(
      height: 111.v,
      width: 305.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                left: 6.h,
                right: 5.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 72.v,
                    ),
                    child: Text(
                      "Cigarettes smoked per day",
                      style: CustomTextStyles.labelLargeGray900Medium_2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 27.h,
                      bottom: 72.v,
                    ),
                    child: Text(
                      "5",
                      style: CustomTextStyles.labelLargeYellow900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 33.v),
              child: SizedBox(
                width: 305.h,
                child: Divider(
                  color: appTheme.gray100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBdgContainerStack(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 128.v,
        width: 349.h,
        margin: EdgeInsets.only(bottom: 55.v),
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
              child: Padding(
                padding: EdgeInsets.only(right: 19.h),
                child: Text(
                  "87",
                  style: CustomTextStyles.headlineSmallOnError,
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
                  style: CustomTextStyles.titleLargeOnErrorMedium,
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBadgeBoxStack(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 294.v,
        width: 356.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgDesignWizardB,
              height: 240.adaptSize,
              width: 240.adaptSize,
              alignment: Alignment.topLeft,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgDesignWizardBOnerror,
              height: 240.adaptSize,
              width: 240.adaptSize,
              alignment: Alignment.bottomCenter,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgDesignWizardBadges3d,
              height: 240.adaptSize,
              width: 240.adaptSize,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 22.h,
                bottom: 9.v,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 213.h,
                margin: EdgeInsets.only(
                  left: 143.h,
                  top: 54.v,
                  bottom: 40.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 59.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup553,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 2.v,
                        bottom: 65.v,
                      ),
                      child: Text(
                        "View All",
                        style: CustomTextStyles.labelMediumOnError,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRightOnprimarycontainer,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        bottom: 62.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 15.v),
                child: SizedBox(
                  width: 305.h,
                  child: Divider(
                    color: appTheme.gray100,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 47.h,
                bottom: 206.v,
              ),
              child: _buildPriceRow(
                context,
                averageCostPer: "Average cost per packet (MYR)",
                thirtyFive: "35",
              ),
            ),
            _buildBdgContainerStack(context),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPriceRow(
    BuildContext context, {
    required String averageCostPer,
    required String thirtyFive,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 96.h,
          child: Text(
            averageCostPer,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.labelLargeGray900Medium_2.copyWith(
              color: appTheme.gray900.withOpacity(0.63),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 126.h,
            top: 5.v,
            bottom: 12.v,
          ),
          child: Text(
            thirtyFive,
            style: CustomTextStyles.labelLargeYellow900.copyWith(
              color: appTheme.yellow900,
            ),
          ),
        ),
      ],
    );
  }
}
