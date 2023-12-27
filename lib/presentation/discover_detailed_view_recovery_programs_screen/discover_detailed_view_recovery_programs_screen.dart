import '../discover_detailed_view_recovery_programs_screen/widgets/userprofile2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_floating_button.dart';
import 'package:thrive_quit_application/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DiscoverDetailedViewRecoveryProgramsScreen extends StatelessWidget {
  DiscoverDetailedViewRecoveryProgramsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 5.v),
                child: Column(children: [
                  CustomSearchView(
                      width: 212.h,
                      controller: searchController,
                      hintText: "Search"),
                  SizedBox(height: 15.v),
                  _buildUserProfile(context),
                  SizedBox(height: 4.v),
                  Text("End of List",
                      style: CustomTextStyles.labelSmallGray600),
                  SizedBox(height: 29.v)
                ])),
            bottomNavigationBar: _buildNavigationBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 81,
                width: 81,
                backgroundColor: appTheme.amber900,
                child: CustomImageView(
                    imagePath: ImageConstant.imgLocationPin3,
                    height: 40.5.v,
                    width: 40.5.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h, right: 308.h, bottom: 23.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "All Recovery Programs"));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0.v),
                  child: SizedBox(
                      width: 135.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.black90001)));
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Userprofile2ItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildNavigationBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
