import '../community_hub_general_screen/widgets/forum_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';
import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_floating_button.dart';

class CommunityHubGeneralScreen extends StatelessWidget {
  CommunityHubGeneralScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      right: 11.h,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Community Hub",
                          style: CustomTextStyles.headlineLargeBlack90001,
                        ),
                        Text(
                          "Connect, Share & Thrive!",
                          style: CustomTextStyles.labelLargeDMSansGray900Bold_1,
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          "Have Questions? / Want to share your journey?",
                          style: CustomTextStyles.titleSmallGray900,
                        ),
                        SizedBox(height: 2.v),
                        SizedBox(
                          height: 48.v,
                          width: 196.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 43.v,
                                  width: 196.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.orangeA200.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(
                                      20.h,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: appTheme.black90001
                                            .withOpacity(0.25),
                                        spreadRadius: 2.h,
                                        blurRadius: 2.h,
                                        offset: Offset(
                                          0,
                                          4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomElevatedButton(
                                width: 174.h,
                                text: "“Create Post“",
                                buttonStyle:
                                    CustomButtonStyles.outlineBlackTL101,
                                buttonTextStyle:
                                    CustomTextStyles.headlineSmallWhiteA700,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 9.h,
                                  vertical: 5.v,
                                ),
                                decoration: AppDecoration.fillAmber.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder17,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text(
                                        "Top Posts",
                                        style: CustomTextStyles
                                            .titleSmallWhiteA700,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 27.h,
                                      child: Divider(
                                        color: appTheme.whiteA700,
                                        indent: 1.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 9.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder17,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Recent Posts",
                                      style:
                                          CustomTextStyles.titleSmallBlack90001,
                                    ),
                                    SizedBox(height: 1.v),
                                    SizedBox(
                                      width: 50.h,
                                      child: Divider(
                                        color: appTheme.gray60099,
                                      ),
                                    ),
                                    SizedBox(height: 1.v),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Divider(
                          color: appTheme.black90001.withOpacity(0.3),
                        ),
                        SizedBox(height: 17.v),
                        _buildForum(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomAppBar(),
        floatingActionButton: CustomFloatingButton(
          height: 81,
          width: 81,
          backgroundColor: appTheme.amber900,
          child: CustomImageView(
            imagePath: ImageConstant.imgLocationPin3,
            height: 40.5.v,
            width: 40.5.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildForum(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 11.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ForumItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return "/";
      case BottomBarEnum.Education:
        return AppRoutes.homePageOnePage;
      case BottomBarEnum.Community:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePageOnePage:
        return HomePageOnePage();
      default:
        return DefaultWidget();
    }
  }
}
