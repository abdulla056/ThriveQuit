import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class HomePageOneContainerScreen extends StatelessWidget {
  HomePageOneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.homePageOnePage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                          pageBuilder: (ctx, ani, ani1) =>
                              getCurrentPage(routeSetting.name!),
                          transitionDuration: Duration(seconds: 0))),
                  SizedBox(height: 9.v)
                ])),
            bottomNavigationBar: _buildBottomAppBar(context),
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
  Widget _buildBottomAppBar(BuildContext context) {
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
}
