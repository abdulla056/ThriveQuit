import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/discover_list_view_page/discover_list_view_page.dart';
import 'package:thrive_quit_application/presentation/discover_map_view_page/discover_map_view_page.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_floating_button.dart';

class DiscoverListViewTabContainerScreen extends StatefulWidget {
  const DiscoverListViewTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DiscoverListViewTabContainerScreenState createState() =>
      DiscoverListViewTabContainerScreenState();
}

class DiscoverListViewTabContainerScreenState
    extends State<DiscoverListViewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 33.v),
                  SizedBox(
                    height: 51.v,
                    width: 207.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Discover",
                            style: CustomTextStyles.headlineLargeBold,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Discover upcoming events near you",
                            style: CustomTextStyles.labelLargeDMSansGray900Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Container(
                    height: 30.v,
                    width: 228.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor: appTheme.gray50,
                      labelStyle: TextStyle(
                        fontSize: 12.fSize,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelColor: appTheme.gray700,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 12.fSize,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                      ),
                      indicatorPadding: EdgeInsets.all(
                        2.0.h,
                      ),
                      indicator: BoxDecoration(
                        color: appTheme.orangeA200,
                        borderRadius: BorderRadius.circular(
                          13.h,
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "List",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Map View",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 562.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        DiscoverListViewPage(),
                        DiscoverMapViewPage(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
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
  Widget _buildBottomAppBar(BuildContext context) {
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
