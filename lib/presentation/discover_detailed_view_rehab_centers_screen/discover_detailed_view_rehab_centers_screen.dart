import '../discover_detailed_view_rehab_centers_screen/widgets/userprofile3_item_widget.dart';
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
class DiscoverDetailedViewRehabCentersScreen extends StatelessWidget {
  DiscoverDetailedViewRehabCentersScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
        backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined,),
          ),
        ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 7.v),
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
                  SizedBox(height: 28.v)
                ])),
        ),
      );
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
              return Userprofile3ItemWidget();
            }));
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
