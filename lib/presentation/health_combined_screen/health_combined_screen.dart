import '../health_combined_screen/widgets/healthcombined_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_outlined_button.dart';

class HealthCombinedScreen extends StatelessWidget {
  const HealthCombinedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: Column(
                  children: [
                    Text(
                      "Your Health",
                      style: CustomTextStyles.headlineSmallBlack90001,
                    ),
                    SizedBox(height: 35.v),
                    SizedBox(
                      height: 1931.v,
                      width: 318.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 34.v,
                              child: VerticalDivider(
                                width: 3.h,
                                thickness: 3.v,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 21.h,
                                      right: 45.h,
                                    ),
                                    child: Row(
                                      children: [
                                        _buildYourHeartRate(context),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 11.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 183.h,
                                                  child: Text(
                                                    "Your heart rate and blood pressure returns to normal",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                SizedBox(height: 1.v),
                                                Text(
                                                  "5 hours",
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 13.v),
                                  _buildHealthCombined(context),
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildYourHeartRate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3.v),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 8.h,
          top: 8.v,
          right: 8.h,
          bottom: 8.v,
        ),
        strokeWidth: 8.h,
        gradient: LinearGradient(
          begin: Alignment(0.24, 0),
          end: Alignment(0.5, 0),
          colors: [
            appTheme.amber900,
            appTheme.whiteA700.withOpacity(0),
            appTheme.amber900,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
        child: CustomOutlinedButton(
          height: 56.v,
          width: 57.h,
          text: "100%",
          buttonTextStyle: theme.textTheme.labelMedium!,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHealthCombined(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 29,
        itemBuilder: (context, index) {
          return HealthcombinedItemWidget();
        },
      ),
    );
  }
}
