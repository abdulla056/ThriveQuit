import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_floating_button.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

class SavingsScreen extends StatelessWidget {
  SavingsScreen({Key? key})
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
              SizedBox(height: 10.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 7.h),
                padding: EdgeInsets.symmetric(horizontal: 7.h),
                decoration: AppDecoration.gradientOrangeToAmber.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder17,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: CustomIconButton(
                        height: 23.v,
                        width: 32.h,
                        padding: EdgeInsets.all(2.h),
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgRightOnprimarycontainer23x32,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 31.v,
                      ),
                      decoration:
                          AppDecoration.gradientAmberToDeepOrangeA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder17,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text(
                              "So far you’ve saved ",
                              style: CustomTextStyles.headlineSmallWhiteA700_1,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          SizedBox(
                            height: 81.v,
                            width: 286.h,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 44.h,
                                      vertical: 7.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillPrimary1.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 115.h),
                                          child: Text(
                                            "RM",
                                            style: CustomTextStyles
                                                .displayMedium45,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 11.h),
                                    child: Text(
                                      "520",
                                      style: CustomTextStyles
                                          .displayLargeGray80001,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 36.v),
                          Divider(
                            color: appTheme.black90001.withOpacity(0.14),
                            indent: 4.h,
                            endIndent: 5.h,
                          ),
                          SizedBox(height: 21.v),
                          Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text(
                              "With that, you can",
                              style: CustomTextStyles.headlineSmallWhiteA700_2,
                            ),
                          ),
                          SizedBox(height: 49.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              right: 24.h,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgChildIcon,
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 20.h,
                                    top: 11.v,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "Feed 1040 starving children",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 56.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              right: 67.h,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 21.h,
                                    top: 11.v,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "Save 130 furry friends",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 55.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              right: 58.h,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgCoffee,
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 21.h,
                                    top: 14.v,
                                  ),
                                  child: Text(
                                    "Enjoy 260 iced coffees ",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 54.v),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgTicket1Hobby,
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 17.h,
                                    top: 6.v,
                                    bottom: 7.v,
                                  ),
                                  child: Text(
                                    "Watch 30 movies",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNavigationBar(context),
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
