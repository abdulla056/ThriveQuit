import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

class BreathingExercisesWithGifScreen extends StatelessWidget {
  const BreathingExercisesWithGifScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
}
