import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';
import 'package:thrive_quit_application/widgets/custom_floating_button.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DiscoverIndividualDetailedViewRehabCentersScreen extends StatelessWidget {
  DiscoverIndividualDetailedViewRehabCentersScreen({Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Expanded(
                      child: Column(children: [
                    _buildImageStack(context),
                    SizedBox(height: 15.v),
                    _buildRehabCenterRow(context),
                    SizedBox(height: 11.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLinkedin,
                                      height: 21.adaptSize,
                                      width: 21.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 2.v, bottom: 3.v)),
                                  Container(
                                      width: 197.h,
                                      margin: EdgeInsets.only(left: 6.h),
                                      child: Text(
                                          "Location should be somewhere that the rehab center, should be located in, 47500",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .labelMediumGray600))
                                ]))),
                    SizedBox(height: 9.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCheckupMedical,
                                      height: 21.adaptSize,
                                      width: 21.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 2.v, bottom: 5.v)),
                                  Container(
                                      width: 199.h,
                                      margin: EdgeInsets.only(left: 7.h),
                                      child: Text(
                                          "Specific focus areas like substance abuse, mental health, or dual diagnosis.",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .labelMediumGray600))
                                ]))),
                    SizedBox(height: 36.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text("About",
                                style:
                                    CustomTextStyles.titleMediumOrangeA200))),
                    SizedBox(height: 3.v),
                    Container(
                        width: 312.h,
                        margin: EdgeInsets.only(left: 18.h, right: 28.h),
                        child: Text(
                            "Nestled in a serene setting, Harmony Haven is a leading rehab center committed to guiding individuals on their journey to recovery. Our state-of-the-art facility offers personalized treatment programs, blending evidence-based therapies, compassionate counseling, and holistic activities. Our expert team of dedicated professionals provides round-the-clock support, fostering a healing environment for those seeking freedom from addiction.",
                            maxLines: 9,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.labelLargeDMSansGray600)),
                    Spacer(),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomIconButton(
                          height: 33.adaptSize,
                          width: 33.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          decoration: IconButtonStyleHelper.fillPrimary,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPhoneAndroid)),
                      Container(
                          height: 33.v,
                          width: 113.h,
                          margin: EdgeInsets.only(left: 7.h),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPhoneButton,
                                height: 33.v,
                                width: 113.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: 93.h,
                                    margin: EdgeInsets.all(9.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgInstagram,
                                              height: 14.adaptSize,
                                              width: 14.adaptSize),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFacebook,
                                              height: 13.adaptSize,
                                              width: 13.adaptSize),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgTwitterMediaTwitterSocial,
                                              height: 10.v,
                                              width: 12.h)
                                        ])))
                          ]))
                    ]),
                    SizedBox(height: 7.v),
                    CustomElevatedButton(
                        width: 174.h,
                        text: "Website",
                        buttonStyle: CustomButtonStyles.outlineBlackTL101,
                        buttonTextStyle:
                            CustomTextStyles.titleLargeWhiteA700Medium_1),
                    SizedBox(height: 22.v)
                  ])),
                  SizedBox(height: 9.v)
                ])),
              )
            );
  }

  /// Section Widget
  Widget _buildImageStack(BuildContext context) {
    return SizedBox(
        height: 161.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage13,
              height: 161.v,
              width: 360.h,
              radius: BorderRadius.vertical(bottom: Radius.circular(5.h)),
              alignment: Alignment.center),
          Padding(
              padding: EdgeInsets.only(left: 19.h, top: 19.v),
              child: CustomIconButton(
                  height: 32.v,
                  width: 33.h,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineBlackTL161,
                  alignment: Alignment.topLeft,
                  onTap: () {
                    onTapBtnArrowLeft(context);
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)))
        ]));
  }

  /// Section Widget
  Widget _buildRehabCenterRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 14.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rehab Center 1", style: theme.textTheme.headlineMedium),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgHeartRewardSOrange90001,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  margin: EdgeInsets.only(top: 7.v, bottom: 8.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgShareLinkShareTransmit,
                  height: 17.adaptSize,
                  width: 17.adaptSize,
                  margin: EdgeInsets.only(left: 12.h, top: 9.v, bottom: 10.v))
            ]));
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
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
