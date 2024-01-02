import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';

class SosActivationScreen extends StatelessWidget {
  const SosActivationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                appTheme.red800,
                appTheme.red30001,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 51.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 325.v,
                  width: 276.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorRed300,
                        height: 325.v,
                        width: 247.h,
                        alignment: Alignment.centerLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage11,
                        height: 128.v,
                        width: 231.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(bottom: 72.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.v),
                Container(
                  height: 55.v,
                  width: double
                      .infinity, // allow the container to take up all available width
                  margin: EdgeInsets.only(left: 22.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: double
                              .infinity, // allow the SizedBox to take up all available width
                          child: Text(
                            "Ambulance and first responders are arriving soon",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleLargeWhiteA700
                                .copyWith(
                                    fontSize:
                                        22.0), // change the font size here
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 21.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 312.h,
                    margin: EdgeInsets.only(
                      left: 22.h,
                      right: 25.h,
                    ),
                    child: Text(
                      "Ensure that you are in an open space or your doors are unlocked. First responders will help you assess the situation and treat you respectively. ",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: 54.v),
                CustomElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                      context, AppRoutes.emergencyPageScreen),
                  text: "Cancel request",
                  margin: EdgeInsets.symmetric(horizontal: 37.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                  buttonTextStyle: CustomTextStyles.titleLargeRed60001,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
