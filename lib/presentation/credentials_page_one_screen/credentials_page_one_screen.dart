import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_drop_down.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';
import 'package:thrive_quit_application/widgets/custom_text_form_field.dart';

class CredentialsPageOneScreen extends StatelessWidget {
  CredentialsPageOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 292.h,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    right: 30.h,
                  ),
                  child: Text(
                    "Give us some basic information",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Please fill in all the required fields.",
                          style: theme.textTheme.titleSmall,
                        ),
                        TextSpan(
                          text: "*",
                          style: CustomTextStyles.titleSmallRedA700,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              _buildBasicInfo(context),
              SizedBox(height: 29.v),
              _buildPersonalInfo(context),
              SizedBox(height: 29.v),
              _buildAccountInfo(context),
              SizedBox(height: 29.v),
              _buildContactInfo(context),
              SizedBox(height: 29.v),
              _buildDateOfBirth(context),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(right: 14.h),
                child: CustomIconButton(
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  padding: EdgeInsets.all(13.h),
                  decoration: IconButtonStyleHelper.fillOrange,
                  alignment: Alignment.centerRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBasicInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "First Name",
                    style: CustomTextStyles.titleLargeGray900_2,
                  ),
                  TextSpan(
                    text: "*",
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: CustomTextFormField(
              controller: firstNameController,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonalInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Last Name",
                    style: CustomTextStyles.titleLargeBlack90001,
                  ),
                  TextSpan(
                    text: "* ",
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: CustomTextFormField(
              controller: lastNameController,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountInfo(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Username",
                    style: CustomTextStyles.titleLargeBlack90001,
                  ),
                  TextSpan(
                    text: "*",
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: CustomTextFormField(
              controller: userNameController,
              textInputAction: TextInputAction.done,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContactInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Contact Number",
                  style: CustomTextStyles.titleLargeBlack90001,
                ),
                TextSpan(
                  text: "*",
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 11.v),
          Container(
            height: 37.v,
            width: 317.h,
            margin: EdgeInsets.only(left: 5.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Date of Birth",
                    style: CustomTextStyles.titleLargeBlack90001,
                  ),
                  TextSpan(
                    text: "*",
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 11.h),
                    child: CustomDropDown(
                      hintText: "DD",
                      items: dropdownItemList,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 15.v,
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11.h),
                    child: CustomDropDown(
                      hintText: "MM",
                      items: dropdownItemList1,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: CustomDropDown(
                      hintText: "YYYY",
                      items: dropdownItemList2,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
