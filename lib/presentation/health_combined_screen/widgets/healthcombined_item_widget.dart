import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore: must_be_immutable
class HealthcombinedItemWidget extends StatelessWidget {
  const HealthcombinedItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.v,
      child: VerticalDivider(
        width: 3.h,
        thickness: 3.v,
        color: appTheme.yellow90001,
      ),
    );
  }
}
