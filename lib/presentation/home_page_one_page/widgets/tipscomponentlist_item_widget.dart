import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore: must_be_immutable
class TipscomponentlistItemWidget extends StatelessWidget {
  const TipscomponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          decoration: AppDecoration.gradientDeepOrangeToYellow.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 78.v,
                width: 140.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserGray30001,
                      height: 50.v,
                      width: 39.h,
                      alignment: Alignment.topLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUserDeepOrange100,
                      height: 61.v,
                      width: 81.h,
                      alignment: Alignment.bottomRight,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "Daily tips",
                          style: CustomTextStyles.titleLargeBlack90001_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              CustomImageView(
                imagePath: ImageConstant.imgUserOnerror,
                height: 27.v,
                width: 57.h,
                margin: EdgeInsets.only(left: 14.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
