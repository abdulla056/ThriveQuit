import 'package:thrive_quit_application/controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HomePageOnePage extends StatefulWidget {
  const HomePageOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomePageOnePage> createState() => _HomePageOnePageState();
}

class _HomePageOnePageState extends State<HomePageOnePage> {
  DashboardController dashboardController = DashboardController();
  //final data = dashboardController.dashboardData(userId)

    @override
  void initState() {
    super.initState();

    // Fetch user data when the widget is initialized
    fetchDashboardData();
  }

  Future<void> fetchDashboardData() async {
    try {
      // Call the dashboardData function from the controller
      await dashboardController.dashboardData();

      // Rebuild the widget to reflect the changes in the UI
      setState(() {});
    } catch (e) {
      print('Error fetching dashboard data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // width: double.infinity,
          // decoration: AppDecoration.fillWhiteA,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 8.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 11.v),
                _buildEmergencyHelpRow(context),
                SizedBox(height: 14.v),
                _buildTrackerDisplayColumn(context),
                SizedBox(height: 13.v),
                _buildStreakColumn(context),
                SizedBox(height: 14.v),
                _buildFiveHundredTwentyStack(context),
                SizedBox(height: 18.v),
                _buildHealthAndBreathingExcercises(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
/// Section Widget
Widget _buildEmergencyHelpRow(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      left: 13.h,
      right: 7.h,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 6.v,
          ),
          child: Text(
            "Welcome ${dashboardController.displayName},",
            style: CustomTextStyles.titleLargeGray900Medium,
          ),
        ),
        CustomElevatedButton(
          onPressed: () =>
              Navigator.pushNamed(context, AppRoutes.emergencyPageScreen),
          height: 38.v,
          width: 124.h,
          text: "Emergency Help",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgEmergency,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.outlineBlackTL10,
          buttonTextStyle: CustomTextStyles.labelMediumWhiteA700,
        ),
      ],
    ),
  );
}

/// Section Widget
Widget _buildTrackerDisplayColumn(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, AppRoutes.trackerPageTabContainerScreen),
    child: Container(
      margin: EdgeInsets.only(
        left: 1.h,
        right: 0.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 37.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 30.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "Your progressive journey",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRightOnprimarycontainer,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 30.h),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dashboardController.totalDaysSinceSmoked.toString(),
                style: theme.textTheme.displayLarge,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 45.v,
                  bottom: 13.v,
                ),
                child: Text(
                  "days",
                  style: CustomTextStyles.titleSmallGray900_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.v),
          Divider(),
          SizedBox(height: 13.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                dashboardController.yearsCounter.toString(),
                style: CustomTextStyles.headlineLargeOrangeA20002,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  top: 19.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "years",
                  style: CustomTextStyles.labelMediumGray900,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Text(
                  dashboardController.monthsCounter.toString(),
                  style: CustomTextStyles.headlineLargeOrangeA20002,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 2.h,
                  top: 17.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "months",
                  style: CustomTextStyles.labelMediumGray900,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 17.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "&",
                  style: CustomTextStyles.labelMediumGray900,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  dashboardController.daysCounter.toString(),
                  style: CustomTextStyles.headlineLargeOrangeA20002,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 19.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "days",
                  style: CustomTextStyles.labelMediumGray900,
                ),
              ),
            ],
          ),
          SizedBox(height: 13.v),
        ],
      ),
    ),
  );
}

/// Section Widget
Widget _buildStreakColumn(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 3.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            "Don’t lose this week’s streak",
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 5.v),
        SizedBox(
          height: 96.v,
          width: 335.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 16.v),
                  padding: EdgeInsets.symmetric(vertical: 19.v),
                  decoration: AppDecoration.fillGrayD.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 35.adaptSize,
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 6.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillAmber.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Text(
                          "M",
                          style: CustomTextStyles.titleSmallWhiteA700Medium,
                        ),
                      ),
                      Container(
                        width: 37.adaptSize,
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 6.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillAmber.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Text(
                          "Tu",
                          style: CustomTextStyles.titleSmallWhiteA700Medium,
                        ),
                      ),
                      Container(
                        width: 35.adaptSize,
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 6.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillAmber.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Text(
                          "W",
                          style: CustomTextStyles.titleSmallWhiteA700Medium,
                        ),
                      ),
                      Container(
                        width: 38.adaptSize,
                        margin: EdgeInsets.only(bottom: 6.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.fillAmber.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Text(
                          "Th",
                          style: CustomTextStyles.titleSmallWhiteA700Medium,
                        ),
                      ),
                      Container(
                        width: 35.adaptSize,
                        margin: EdgeInsets.only(bottom: 6.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.fillAmber.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Text(
                          "F",
                          style: CustomTextStyles.titleSmallWhiteA700Medium,
                        ),
                      ),
                      Container(
                        width: 35.adaptSize,
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 6.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Text(
                          "St",
                          style: CustomTextStyles.titleSmallGray900Medium_1,
                        ),
                      ),
                      Container(
                        width: 35.adaptSize,
                        margin: EdgeInsets.only(bottom: 6.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.fillBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17,
                        ),
                        child: Text(
                          "Su",
                          style: CustomTextStyles.titleSmallGray900Medium_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 32.v,
                  width: 119.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray60001,
                    borderRadius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Check in",
                      style: TextStyle(
                        color: Colors.white, // Set the color of the text
                        fontSize: 16, // Set the size of the text
                      ),
                    ),
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

/// Section Widget
Widget _buildFiveHundredTwentyStack(BuildContext context) {
  return Card(
    clipBehavior: Clip.antiAlias,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusStyle.roundedBorder17,
    ),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.savingsScreen);
      },
      child: Container(
        height: 137.v,
        width: 332.h,
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.gradientAmberToAmber.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 30.h, top: 48.v),
                child: Text(
                  dashboardController.totalMoneySaved,
                  style: CustomTextStyles.displayMediumGray80001,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130.h,
                        child: Text(
                          "So far you’ve saved ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleLargeWhiteA700
                              .copyWith(fontSize: 23.3),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRight,
                        height: 23.v,
                        width: 30.h,
                        margin: EdgeInsets.only(
                          left: 137.h,
                          bottom: 25.v,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "RM",
                    style: CustomTextStyles.displaySmallWhiteA700
                        .copyWith(fontSize: 38.0),
                    textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: false,
                      applyHeightToLastDescent: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildHealthAndBreathingExcercises(BuildContext context) {
  return GestureDetector(
    child: SizedBox(
      height : 118.v,
      child: Row(
        children: [
          SizedBox(width: 5.h,),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, AppRoutes.healthCombinedScreen),
            child: Container(
              width: 160.v,
              decoration: AppDecoration.gradientDeepOrangeToYellow.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromARGB(255, 223, 119, 113),
                    Color(0xffE94339),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.v,),
                  Icon(Icons.health_and_safety_outlined),
                  SizedBox(height: 5.v,),
                  Text(
                    "Health", style: CustomTextStyles.titleLargeWhiteA700
                                  .copyWith(fontSize: 23.3),)
                ],
              ),
            ),
          ),
          SizedBox(width: 25.h,),
          Center(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppRoutes.breathingExercisesIntroScreen),
              child: Container(
                width: 160.v,
                decoration: AppDecoration.gradientDeepOrangeToYellow.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    appTheme.amber900.withOpacity(0.66),
                    appTheme.amber900,
                    ],
                  ),
                ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.v,),
                      Icon(Icons.air),
                      SizedBox(height: 3.v,),
                      Text(
                        "Breathing Excercises", style: CustomTextStyles.titleLargeWhiteA700
                                      .copyWith(fontSize: 23.3),
                                      textAlign: TextAlign.center,)
                    ],
                  ),
                ),
            ),
          ),
        ],
      ),
    ),
  );
}
}

