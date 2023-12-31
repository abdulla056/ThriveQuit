import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';

class BreathingExercisesWithGifScreen extends StatelessWidget {
  const BreathingExercisesWithGifScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined,),
          ),
        ),
        backgroundColor: appTheme.blueGray5001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBreathingGif,
                height: 360.adaptSize,
                width: 360.adaptSize,
              ),
              SizedBox(height: 71.v),
              Text(
                "Be still and pay attention to your breath",
                style: CustomTextStyles.bodyMediumAmber900,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgRightOnprimarycontainer23x32,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: false,
    );
  }
}
