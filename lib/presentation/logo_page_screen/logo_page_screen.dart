import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

class LogoPageScreen extends StatelessWidget {
  const LogoPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black90001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 34.v),
          child: Column(
            children: [
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
                          left: 89.h,
                          bottom: 12.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.black90001.withOpacity(0.1),
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
                      imagePath: ImageConstant.imgImage1,
                      height: 444.v,
                      width: 360.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 43.v),
              SizedBox(
                height: 63.v,
                width: 228.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 62.v,
                        width: 108.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.orangeA200,
                              appTheme.amber90003,
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
                          "quit",
                          style: CustomTextStyles.displayMediumBlack90001,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "Thrive",
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
