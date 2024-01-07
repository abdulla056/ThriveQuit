import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class HealthcombinedItemWidget extends StatelessWidget {

  final String percentage;
 
  const HealthcombinedItemWidget({
    Key? key,
    required this.percentage,  
  })
      : super(
          key: key,
        );

  Widget _build(BuildContext context) {
    return SizedBox(
      height: 34.v,
      child: VerticalDivider(
        width: 3.h,
        thickness: 3.v,
      ),
    );
  }

Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      bottom: 8.v,
      top: 8.v,
    ),
    child: OutlineGradientButton(
      padding: EdgeInsets.all(10.h),
      strokeWidth: 9.h,
      gradient: LinearGradient(
        begin: Alignment(-3.5, -3.2),
        end: Alignment(0, 25),
        colors: [
          appTheme.amber900,
          appTheme.whiteA700.withOpacity(0.0), // Ensure transparent background
          appTheme.amber900,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(60),
        topRight: Radius.circular(60),
        bottomLeft: Radius.circular(60),
        bottomRight: Radius.circular(60),
      ),
      child: CustomOutlinedButton(
        height: 46.v,
        width: 47.h,
        text: percentage,
        buttonTextStyle: theme.textTheme.labelMedium!,
      ),
    ),
  );
}


  
}
