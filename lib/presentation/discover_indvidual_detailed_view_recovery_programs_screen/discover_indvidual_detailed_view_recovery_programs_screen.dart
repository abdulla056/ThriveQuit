import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DiscoverIndvidualDetailedViewRecoveryProgramsScreen
    extends StatelessWidget {
  DiscoverIndvidualDetailedViewRecoveryProgramsScreen({Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildStackImageArrowLeft(context),
                        SizedBox(height: 15.v),
                        _buildRowRehabCenterOne(context),
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup4568,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 3.v, bottom: 13.v)),
                              Container(
                                  margin: EdgeInsets.only(left: 13.h),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 14.h),
                                  decoration: AppDecoration
                                      .gradientAmberToAmber9001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        SizedBox(
                                            width: 43.h,
                                            child: Text("15 June \n2023",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .labelLargeDMSansWhiteA700Bold_1))
                                      ])),
                              CustomElevatedButton(
                                  height: 36.v,
                                  width: 73.h,
                                  text: "10:30 am",
                                  margin: EdgeInsets.only(left: 8.h),
                                  buttonStyle: CustomButtonStyles.none,
                                  decoration: CustomButtonStyles
                                      .gradientAmberToAmberDecoration,
                                  buttonTextStyle:
                                      CustomTextStyles.labelLargeDMSansGray800)
                            ])),
                        SizedBox(height: 8.v),
                        Padding(
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
                                      margin: EdgeInsets.only(left: 13.h),
                                      child: Text(
                                          "Online (ZOOM or Google Meet)",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .labelMediumGray600))
                                ])),
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Organized by : ",
                                      style: CustomTextStyles
                                          .labelLargeDMSansOrangeA200),
                                  TextSpan(
                                      text: "Malaysian Academy of Pharmacy (MAP)",
                                      style: CustomTextStyles
                                          .labelLargeDMSansBlack900)
                                ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text("About",
                                style: CustomTextStyles.titleMediumOrangeA200)),
                        SizedBox(height: 3.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 312.h,
                                margin:
                                    EdgeInsets.only(left: 18.h, right: 28.h),
                                child: Text(
                                    "mQuit service is a collaborative effort from the Ministry of Health, Malaysian Academy of Pharmacy (MAP), Malaysian Pharmacists Society (MPS) and various other partners.  The main objective of this service is to carry out smoking cessation programme in Malaysia involving both public and private sector. Community pharmacy is an important channel for providing mQuit service.",
                                    maxLines: 9,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelLargeDMSansGray600))),
                        SizedBox(height: 89.v),
                        Align(
                            alignment: Alignment.center,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomIconButton(
                                      height: 33.adaptSize,
                                      width: 33.adaptSize,
                                      padding: EdgeInsets.all(9.h),
                                      decoration:
                                          IconButtonStyleHelper.fillPrimary,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPhoneAndroid)),
                                  Container(
                                      height: 33.v,
                                      width: 113.h,
                                      margin: EdgeInsets.only(left: 7.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgPhoneButton,
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
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgInstagram,
                                                              height:
                                                                  14.adaptSize,
                                                              width:
                                                                  14.adaptSize),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgFacebook,
                                                              height:
                                                                  13.adaptSize,
                                                              width:
                                                                  13.adaptSize),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgTwitterMediaTwitterSocial,
                                                              height: 10.v,
                                                              width: 12.h)
                                                        ])))
                                          ]))
                                ])),
                        SizedBox(height: 7.v),
                        CustomElevatedButton(
                            width: 174.h,
                            text: "Event Page",
                            buttonStyle: CustomButtonStyles.outlineBlackTL101,
                            buttonTextStyle:
                                CustomTextStyles.titleLargeWhiteA700Medium_1,
                            alignment: Alignment.center),
                        SizedBox(height: 22.v)
                      ]),
                  SizedBox(height: 9.v)
                ])),
                )
              );
  }

  /// Section Widget
  Widget _buildStackImageArrowLeft(BuildContext context) {
    return SizedBox(
        height: 161.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.mquitServiceImg,
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
  Widget _buildRowRehabCenterOne(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 19.h, right: 14.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("mQUIT Service", style: theme.textTheme.headlineMedium),
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
                      margin:
                          EdgeInsets.only(left: 12.h, top: 9.v, bottom: 10.v))
                ])));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
