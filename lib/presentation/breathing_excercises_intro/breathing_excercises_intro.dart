import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';

class BreathingExercisesIntroScreen extends StatelessWidget {
  const BreathingExercisesIntroScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined,),
          ),
        ),
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
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 55.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 30.v,),
                CustomImageView(
                  imagePath: ImageConstant.imgImage12,
                  height: 180.v,
                  width: 165.h,
                ),
                SizedBox(height: 18.v),
                Text(
                  "Breathing Exercises",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallWhiteA700_1,
                ),
                SizedBox(height: 13.v),
                Container(
                  width: 267.h,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    right: 19.h,
                  ),
                  child: Text(
                    "Take at least 3 minutes daily doing this exercise to strengthen your lungs and reenergise yourself. ",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 13.v),
                _buildEleven(context),
                SizedBox(height: 53.v),
                CustomElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                      context, AppRoutes.breathingExercisesWithGifScreen),
                  text: "I’m ready!",
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                  buttonTextStyle: CustomTextStyles.titleLargeYellow90004,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 37.v,
      ),
      decoration: AppDecoration.fillPrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          SizedBox(
            width: 247.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "The instructions are simple :\n\n",
                    style: CustomTextStyles.titleSmallBlack90001Medium_1,
                  ),
                  TextSpan(
                    text:
                        "Inhale when the circle is expanding\nExhale as the circle is shrinking",
                    style: CustomTextStyles.titleSmallBluegray90001,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
