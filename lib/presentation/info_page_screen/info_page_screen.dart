import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

class InfoPageScreen extends StatelessWidget {
  const InfoPageScreen({Key? key})
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
            horizontal: 20.h,
            vertical: 25.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 292.h,
                  margin: EdgeInsets.only(left: 0.h, right: 30.h, top: 0.v),
                  child: Text(
                    "Smoking Information",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        theme.textTheme.headlineLarge?.copyWith(fontSize: 32),
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 292.h,
                  margin: EdgeInsets.only(left: 5.h, right: 35.h, top: 0.v),
                  child: Text(
                    "Please honestly enter the following",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 36.v),
              _buildSmokingInformationSection(context),
              SizedBox(height: 31.v),
              _buildCigarettesSmokedSection(context),
              SizedBox(height: 41.v),
              _buildAverageCostSection(context),
              Spacer(),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(right: 14.h),
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

  /// Section Widget
  Widget _buildSmokingInformationSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cigarettes smoked per day",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          Container(
            height: 71.v,
            width: 301.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCigarettesSmokedSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cigarettes in one packet",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          Container(
            height: 71.v,
            width: 301.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAverageCostSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Average cost per packet (MYR)",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 13.v),
          Container(
            height: 71.v,
            width: 301.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
