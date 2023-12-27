import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore: must_be_immutable
class TiplistItemWidget extends StatelessWidget {
  const TiplistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillAmber.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          Text(
            "Tip of the day",
            style: CustomTextStyles.titleMediumWhiteA700,
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 252.h,
              margin: EdgeInsets.only(
                left: 8.h,
                right: 12.h,
              ),
              child: Text(
                "Constantly getting the urge to pick up your cigarette again? Try chewing gum to distract your mind and stray your senses.",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleLargeWhiteA700Regular,
              ),
            ),
          ),
          SizedBox(height: 47.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Text(
                "SEE MORE >",
                style: CustomTextStyles.titleSmallWhiteA700Medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
