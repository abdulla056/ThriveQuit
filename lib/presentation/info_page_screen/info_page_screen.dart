import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_drop_down.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

class InfoPageScreen extends StatelessWidget {
  InfoPageScreen({Key? key})
      : super(
          key: key,
        );

    List<String> dropdownItemList = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
  ];

  List<String> dropdownItemList1 = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
  ];

  List<String> dropdownItemList2 = [
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
    "2023",
    "2024",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 25.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 292.h,
                  margin: EdgeInsets.only(left: 0.h, right: 30.h, top: 0.v),
                  child: Text(
                    "Smoking Information",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        theme.textTheme.headlineLarge?.copyWith(fontSize: 32),
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 292.h,
                  margin: EdgeInsets.only(left: 5.h, right: 35.h, top: 0.v),
                  child: Text(
                    "Please honestly enter the following",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 36.v),
              _buildSmokingInformationSection(context),
              SizedBox(height: 36.v),
              _buildCigarettesSmokedSection(context),
              SizedBox(height: 36.v),
              _buildAverageCostSection(context),
              SizedBox(height: 36.v,),
              _buildDateLastSmoked(context),
              Spacer(),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(right: 14.h),
                child: CustomIconButton(
                  onTap: () => Navigator.pushNamed(context, AppRoutes.homePage),
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
  Widget _buildSmokingInformationSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cigarettes smoked per day",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          Container(
            height: 71.v,
            width: 301.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCigarettesSmokedSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cigarettes in one packet",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          Container(
            height: 71.v,
            width: 301.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAverageCostSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Average cost per packet (MYR)",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 13.v),
          Container(
            height: 71.v,
            width: 301.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

    /// Section Widget
  Widget _buildDateLastSmoked(BuildContext context) {
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
                    text: "When is the last time you smoked?",
                    style: theme.textTheme.titleSmall,
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
                    padding: EdgeInsets.only(right: 11.5.h),
                    child: CustomDropDown(
                      hintText: "MM",
                      items: dropdownItemList1,
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
                    padding: EdgeInsets.only(left: 0.h),
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
