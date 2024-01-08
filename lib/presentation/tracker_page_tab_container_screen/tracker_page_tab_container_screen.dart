import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/tracker_page/tracker_page.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:thrive_quit_application/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:thrive_quit_application/widgets/app_bar/custom_app_bar.dart';

class TrackerPageTabContainerScreen extends StatefulWidget {
  const TrackerPageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TrackerPageTabContainerScreenState createState() =>
      TrackerPageTabContainerScreenState();
}

class TrackerPageTabContainerScreenState
    extends State<TrackerPageTabContainerScreen> with TickerProviderStateMixin {
  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime focusedDay = DateTime.now();

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitleThree(
            text: "Your history",
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 1.v),
              _buildCalendar(context),
              SizedBox(height: 24.v),
              SizedBox(
                height: 464.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 118.v,
                          right: 112.h,
                        ),
                        child: Text(
                          "7",
                          style: theme.textTheme.displayLarge,
                        ),
                      ),
                    ),
                    _buildBlueDot(context),
                    _buildYouVeBeenImproving(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgRightOnprimarycontainer23x32,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 14.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Your history",
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
      height: 237.v,
      width: double.maxFinite,
      child: TableCalendar(
        locale: 'en_US',
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: CustomTextStyles.titleSmallGray900Medium_1,
        ),
        firstDay: DateTime(DateTime.now().year - 5),
        lastDay: DateTime(DateTime.now().year + 5),
        calendarFormat: CalendarFormat.month,
        rangeSelectionMode: rangeSelectionMode,
        startingDayOfWeek: StartingDayOfWeek.monday,
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          isTodayHighlighted: true,
          defaultTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          todayDecoration: BoxDecoration(
            color: theme.colorScheme.errorContainer,
            borderRadius: BorderRadius.circular(
              11.h,
            ),
          ),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(
              color: appTheme.blueGray90002,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0.5.v),
          weekendStyle: TextStyle(
            color: const Color(0xFF6A6A6A),
            height: 0.2,
          ),
        ),
        rowHeight: 30.v,
        focusedDay: focusedDay,
        rangeStartDay: rangeStart,
        rangeEndDay: rangeEnd,
        onDaySelected: (selectedDay, focusedDay) {},
        onRangeSelected: (start, end, focusedDay) {},
        onPageChanged: (focusedDay) {},
      ),
    );
  }

  /// Section Widget
  Widget _buildBlueDot(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 35.h,
          right: 24.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 86.h),
              child: Row(
                children: [
                  Container(
                    height: 19.v,
                    width: 40.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(
                        9.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 4.v,
                    ),
                    child: Text(
                      "= days smoked",
                      style: CustomTextStyles.bodyMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillGray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Text(
                    "You’ve smoked on 7 days this month",
                    maxLines: 1,
                    style: CustomTextStyles.titleSmallGray900Medium_1,
                  ),
                  SizedBox(height: 1.v),
                  Container(
                    width: 241.h,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      right: 11.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Good job! That’s an ",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: "improvement of 5 days",
                            style: CustomTextStyles.labelLargeDMSansGreen8008e,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "from the previous month.",
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildYouVeBeenImproving(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 38.h,
                right: 54.h,
              ),
              child: Row(
                children: [
                  Text(
                    "You’ve been improving for",
                    style: CustomTextStyles.titleSmallGray900Medium_1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "months",
                      style: CustomTextStyles.titleSmallGray900Medium_1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 27.v),
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
              indicatorPadding: EdgeInsets.symmetric(
                horizontal: -40.0,
                vertical: 2.0,
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
                    "Weekly",
                  ),
                ),
                Tab(
                  child: Text(
                    "Monthly",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 234.v,
            child: TabBarView(
              controller: tabviewController,
              children: [
                TrackerPage(),
                TrackerPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
