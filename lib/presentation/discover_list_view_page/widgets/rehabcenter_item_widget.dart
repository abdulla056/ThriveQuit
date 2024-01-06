import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore: must_be_immutable
class RehabcenterItemWidget extends StatelessWidget {
  const RehabcenterItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, AppRoutes.discoverIndividualDetailedViewRehabCentersScreen),
      child: _buildRehabCenter("Solace Asia", "Inpatient", "Solace Asia is a Malaysian-based drug and alcohol rehab and was the first of its type to be established in Malaysia."),
    );
  }

  Container _buildRehabCenter(String name, String type, String description) {
    return Container(
      decoration: AppDecoration.outlineBlack900015.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 186.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100.v,
            width: 186.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.rehabCenterImage,
                  height: 77.v,
                  width: 186.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(10.h),
                  ),
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 42.h,
                      bottom: 5.v,
                    ),
                    child: Text(
                      name,
                      style: CustomTextStyles.labelLargeDMSansGray900_2,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 9.h),
                    padding: EdgeInsets.all(6.h),
                    decoration: AppDecoration.outlineBlack900016.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Text(
                          "Type :",
                          style: CustomTextStyles.labelSmallWhiteA700,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          type,
                          style: CustomTextStyles.labelSmallBlack90001,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 134.h,
                child: Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelSmallGray600,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHeartRewardSOrange90001,
                height: 21.adaptSize,
                width: 21.adaptSize,
                margin: EdgeInsets.only(
                  left: 11.h,
                  top: 10.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
