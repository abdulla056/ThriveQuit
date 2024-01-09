import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';
import 'package:thrive_quit_application/widgets/custom_outlined_button.dart';
import 'package:thrive_quit_application/widgets/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildVectorStack(context),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                height: 67.v,
                text: "Signup with Google",
                margin: EdgeInsets.only(
                  left: 13.h,
                  right: 30.h,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 14.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage9,
                    height: 43.v,
                    width: 52.h,
                  ),
                ),
                buttonTextStyle: theme.textTheme.headlineSmall!,
              ),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                height: 67.v,
                text: "Login with Google",
                margin: EdgeInsets.only(
                  left: 13.h,
                  right: 30.h,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 14.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage9,
                    height: 43.v,
                    width: 52.h,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillOrangeA,
                buttonTextStyle: theme.textTheme.headlineSmall!,
              ),
              SizedBox(height: 51.v),
              Container(
                width: 274.h,
                margin: EdgeInsets.only(
                  left: 13.h,
                  right: 72.h,
                ),
                child: Text(
                  "Enter the Google code sent to your registered contact number.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack90001,
                ),
              ),
              SizedBox(height: 8.v),
              _buildEditTextStack(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 221.v,
        width: 334.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.signUpScreenLogo,
              height: 220.v,
              width: 215.h,
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 18.v),
                child: Text(
                  "Sign Up",
                  style: CustomTextStyles.headlineLargeBold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditTextStack(BuildContext context) {
    return SizedBox(
      height: 281.v,
      width: 332.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 18.v),
            child: CustomIconButton(
              onTap: () => Navigator.pushNamed(context, AppRoutes.credentialsPageOneScreen),
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillOrange,
              alignment: Alignment.bottomRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgRight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 281.v,
              width: 330.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: CustomTextFormField(
                      width: 317.h,
                      controller: editTextController,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.signUpScreenLogo2,
                    height: 281.v,
                    width: 266.h,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
