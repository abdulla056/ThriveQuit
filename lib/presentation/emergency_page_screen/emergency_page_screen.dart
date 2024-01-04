import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';
import 'package:thrive_quit_application/core/app_export.dart'; // Add missing import statement

class EmergencyPageScreen extends StatelessWidget {
  const EmergencyPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.homePage);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined,),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 23.h),
          child: Column(
            children: [
              Text("Are you in an emergency?",
                  style: theme.textTheme.headlineSmall?.copyWith(fontSize: 27)),
              SizedBox(height: 20.v),
              _buildEmergencySection(context),
              SizedBox(height: 36.v),
              _buildEmergencyContactsSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgRightOnprimarycontainer23x32,
        margin: EdgeInsets.fromLTRB(15.h, 16.v, 313.h, 16.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmergencySection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Column(
        children: [
          Container(
            width: 281.h,
            margin: EdgeInsets.only(
              left: 4.h,
              right: 3.h,
            ),
            child: Text(
              "Press the button below to summon emergency services immediately",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumBlack90001,
            ),
          ),
          SizedBox(height: 26.v),
          GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.sosActivationScreen),
            child: Container(
              padding: EdgeInsets.all(30.h),
              decoration: AppDecoration.fillDeepOrange.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder145,
              ),
              child: Container(
                padding: EdgeInsets.all(25.h),
                decoration: AppDecoration.fillRed.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder115,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 48.h,
                    vertical: 59.v,
                  ),
                  decoration: AppDecoration.gradientRedToRed.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder90,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 8.v),
                      Text(
                        "SOS",
                        style: theme.textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmergencyContactsSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineBlack900014.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              children: [
                CustomElevatedButton(
                  height: 43.v,
                  width: 144.h,
                  text: "Felicia",
                  rightIcon: Container(
                    padding: EdgeInsets.all(5.h),
                    margin: EdgeInsets.only(left: 28.h),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsDeepPurple900,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 13.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
                CustomElevatedButton(
                  height: 43.v,
                  width: 144.h,
                  text: "Orange",
                  rightIcon: Container(
                    padding: EdgeInsets.all(5.h),
                    margin: EdgeInsets.only(left: 20.h),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsDeepPurple900,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 15.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
                CustomElevatedButton(
                  height: 43.v,
                  width: 144.h,
                  text: "Lebron",
                  rightIcon: Container(
                    padding: EdgeInsets.all(5.h),
                    margin: EdgeInsets.only(left: 20.h),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsDeepPurple900,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 14.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 23.v,
              bottom: 15.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 95.h,
                    margin: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Your Emergency Contacts",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelMediumWhiteA700_1,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                Text(
                  "OR",
                  style: CustomTextStyles.titleSmallWhiteA700_1,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Emergency Hotline",
                  textAlign: TextAlign.center,
                  style:
                      CustomTextStyles.labelLargeDMSansWhiteA700Bold.copyWith(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 2.v),
                Text(
                  "999",
                  style: CustomTextStyles.headlineLargeWhiteA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
