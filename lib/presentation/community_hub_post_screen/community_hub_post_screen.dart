import '../community_hub_post_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_title.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

class CommunityHubPostScreen extends StatelessWidget {
  const CommunityHubPostScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton:                 
                  FloatingActionButton.large(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: const Icon(Icons.reply),
                  backgroundColor: Colors.orangeAccent,
                ),
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 4.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              child: Column(
                children: [
                  _buildForum1(context),
                  SizedBox(height: 13.v),
                  _buildSixtySeven(context),
                  SizedBox(height: 5.v),
                  _buildUserProfile(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 83.v,
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 46.h),
            child: Row(
              children: [
                SizedBox(width: 10.h,),
                AppbarTitleIconbutton(
                  onTap: () => Navigator.pop(context),
                  imagePath: ImageConstant.imgRightOnprimarycontainer23x32,
                  margin: EdgeInsets.only(
                    top: 7.v,
                    bottom: 10.v,
                  ),
                ),
                AppbarTitle(
                  text: "Community Hub",
                  margin: EdgeInsets.only(left: 9.h),
                ),
              ],
            ),
          ),
          AppbarSubtitleFour(
            text: "Connect, Share & Thrive!",
            margin: EdgeInsets.only(
              left: 100.h,
              right: 97.h,
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 341.h,
              ),
            ),
            SizedBox(height: 5.v,)
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildForum1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.outlineBlackTL14,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUserSingleNeu,
                  ),
                ),
                Container(
                  height: 23.v,
                  width: 57.h,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    top: 3.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Joe Yue",
                          style: CustomTextStyles.labelMediumBlack90001,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Dec 12",
                          style: CustomTextStyles.labelSmallRed50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Posted:",
                          style: CustomTextStyles.labelSmallGray90001,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 284.h,
            margin: EdgeInsets.only(right: 31.h),
            child: Text(
              "Ex-smokers, what was your secret to finally quit smoking?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: 313.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Text(
              "I've read tons of tips, advice, and how 2's online, but none of them seem to work for me. How did you, personally, manage to quit? I would love useful insights and read some tales of inspiration!",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallBluegray900,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHeartRewardS,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "234",
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySeven(BuildContext context) {
    return Column(
      children: [
        Text(
          "16 Replies",
          style: CustomTextStyles.titleLargeGray900,
        ),
        Divider(
          color: appTheme.gray90001.withOpacity(0.55),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 6.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }
}
