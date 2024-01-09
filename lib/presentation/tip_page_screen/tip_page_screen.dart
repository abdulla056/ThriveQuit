import '../tip_page_screen/widgets/tiplist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';

class TipPageScreen extends StatelessWidget {
  const TipPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              top: 12.v,
              right: 29.h,
            ),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.5.v),
                  child: SizedBox(
                    width: 266.h,
                    child: Divider(
                      height: 2.v,
                      thickness: 2.v,
                      color: appTheme.black90001.withOpacity(0.3),
                    ),
                  ),
                );
              },
              itemCount: 1,
              itemBuilder: (context, index) {
                return TiplistItemWidget();
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "Tips",
      ),
    );
  }
}
