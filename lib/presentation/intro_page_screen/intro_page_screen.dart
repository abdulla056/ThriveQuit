import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

class IntroPageScreen extends StatelessWidget {
  const IntroPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.v),
              SizedBox(
                height: 444.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 14.v,
                        width: 135.h,
                        margin: EdgeInsets.only(
                          left: 91.h,
                          bottom: 12.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray5019,
                          borderRadius: BorderRadius.circular(
                            67.h,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: appTheme.gray6003f,
                              spreadRadius: 2.h,
                              blurRadius: 2.h,
                              offset: Offset(
                                0,
                                0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage1444x360,
                      height: 444.v,
                      width: 360.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Container(
                width: 266.h,
                margin: EdgeInsets.only(
                  left: 23.h,
                  right: 69.h,
                ),
                child: Text(
                  "Begin your journey to a smoke-free life",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.displaySmall?.copyWith(fontSize: 40.0),
                ),
              ),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(right: 28.h),
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
}
