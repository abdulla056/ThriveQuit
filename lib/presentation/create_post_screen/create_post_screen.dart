import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';
import 'package:thrive_quit_application/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreatePostScreen extends StatelessWidget {
  CreatePostScreen({Key? key}) : super(key: key);

  TextEditingController whatsOnYourMindController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 25.v),
                child: Column(children: [
                  _buildWhatsOnYourMindColumn(context),
                  SizedBox(height: 27.v),
                  _buildDescriptionColumn(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildPublishButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgRightOnprimarycontainer23x32,
            margin: EdgeInsets.only(left: 15.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapRight(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Create Post"));
  }

  /// Section Widget
  Widget _buildWhatsOnYourMindColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Title*", style: theme.textTheme.titleSmall),
          SizedBox(height: 9.v),
          CustomTextFormField(
              controller: whatsOnYourMindController,
              hintText: "What’s on your mind?",
              textInputAction: TextInputAction.done,
              maxLines: 3)
        ]));
  }

  /// Section Widget
  Widget _buildDescriptionColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Description", style: theme.textTheme.titleSmall),
          SizedBox(height: 8.v),
          Container(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 301.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 19.h, vertical: 7.v),
                        decoration: AppDecoration.outlineBlack90001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 15.v,
                                      width: 104.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgOrientationLan,
                                                height: 12.adaptSize,
                                                width: 12.adaptSize,
                                                alignment: Alignment.topLeft,
                                                margin:
                                                    EdgeInsets.only(left: 8.h)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    height: 15.v,
                                                    width: 104.h,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          right: 8
                                                                              .h),
                                                                  child: Text(
                                                                      "Upload Photo",
                                                                      style: CustomTextStyles
                                                                          .labelMediumGray900
                                                                          .copyWith(
                                                                        fontSize:
                                                                            15.0,
                                                                      )))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        22.0),
                                                                child: SizedBox(
                                                                    width: 75.h,
                                                                    child: Divider(
                                                                        color: appTheme
                                                                            .black90001
                                                                            .withOpacity(0.45))),
                                                              ))
                                                        ])))
                                          ]))),
                              SizedBox(height: 7.v),
                              Padding(
                                padding: const EdgeInsets.only(top: 1.0),
                                child: CustomIconButton(
                                    height: 46.v,
                                    width: 46.h,
                                    decoration:
                                        IconButtonStyleHelper.outlineBlackTL14,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20.0, left: 20.0),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgShare,
                                      ),
                                    )),
                              )
                            ])),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h, top: 10.v),
                        child: Text("More thoughts to input?",
                            style: theme.textTheme.titleSmall)),
                    SizedBox(height: 220.v), //NOTSURE
                  ])),
          SizedBox(height: 12.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Text("Word Count : 0/300",
                      style: CustomTextStyles.labelLargeGray90013))) //NOTSURE
        ]));
  }

  /// Section Widget
  Widget _buildPublishButton(BuildContext context) {
    return CustomElevatedButton(
        width: 215.h,
        text: "Publish",
        buttonStyle: CustomButtonStyles.fillDeepOrange,
        margin: EdgeInsets.only(left: 72.h, right: 73.h, bottom: 40.v),
        buttonTextStyle: CustomTextStyles.headlineSmallOnErrorMedium);
  }

  /// Navigates to the socialsPageContainerScreen when the action is triggered.
  onTapRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.communityHubGeneralScreen);
  }
}
