import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';

class BreathingExercisesOneScreen extends StatelessWidget {
  const BreathingExercisesOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.amber900,
                appTheme.amber900.withOpacity(0.73),
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 28.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                _buildBreathingExercisesTwo(context),
                SizedBox(height: 93.v),
                Text(
                  "Be still and pay attention to your breath",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBreathingExercisesTwo(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(23.h),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder152,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 91.h,
          vertical: 111.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder129,
        ),
        child: Text(
          "inhale",
          style: CustomTextStyles.headlineSmallBlack90001,
        ),
      ),
    );
  }
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
      centerTitle: false,
    );
  }
}
