import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Logo page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logoPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Logo page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logoPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Intro Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.introPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LOGIN  Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Credentials Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.credentialsPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Credentials Page 2 ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.credentialsPage2Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Post",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createPostScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Info page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.infoPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Page",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homePage),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Health Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.healthCombinedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tracker page - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trackerPageTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Savings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.savingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community Hub General Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityHubGeneralScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community Hub General Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityHubPostScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Other Profile Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.otherProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Emergency page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emergencyPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SOS activation",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sosActivationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tip page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.tipPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Breathing exercises",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.breathingExercisesIntroScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Breathing exercises One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.breathingExercisesOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Breathing exercises - with GIF",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.breathingExercisesWithGifScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Discover - List View - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.discoverListViewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Discover - Detailed View - Recovery Programs",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .discoverDetailedViewRecoveryProgramsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Discover - Detailed View - Rehab Centers",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.discoverDetailedViewRehabCentersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Discover - Individual Detailed View - Rehab Centers",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .discoverIndividualDetailedViewRehabCentersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Discover - Indvidual Detailed View - Recovery Programs",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .discoverIndvidualDetailedViewRecoveryProgramsScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
