import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

class LogoPageOneScreen extends StatelessWidget {
  const LogoPageOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black90001,
        body: GestureDetector(
          onTap: () => Navigator.pushNamed(context, AppRoutes.introPageScreen),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children :[ 
              CustomImageView(
                imagePath: ImageConstant.logoImage,
              ),
              Container(
              // height: SizeUtils.height,
              // width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 59.h,
                vertical: 75.v,
              ),
              child: Stack(
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
                      padding: EdgeInsets.only(
                        left: 14.h,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "Thrive",
                        style: theme.textTheme.displayMedium,
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
    );
  }
}
