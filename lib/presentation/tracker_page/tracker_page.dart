import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TrackerPage extends StatefulWidget {
  const TrackerPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrackerPageState createState() => TrackerPageState();
}

class TrackerPageState extends State<TrackerPage>
    with AutomaticKeepAliveClientMixin<TrackerPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 27.v),
              _buildRightStack(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRightStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 177.v,
        width: 252.h,
        margin: EdgeInsets.only(
          left: 82.h,
          right: 25.h,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillOrange,
              alignment: Alignment.bottomRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgRight,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 72.h,
                  bottom: 57.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: SizedBox(
                          height: 15.v,
                          child: VerticalDivider(
                            width: 3.h,
                            thickness: 3.v,
                            color: appTheme.orangeA20004,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "4",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 37.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "7",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 77.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "0",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 3.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100.v,
                          width: 190.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 36.v),
                                  child: SizedBox(
                                    width: 190.h,
                                    child: Divider(
                                      color:
                                          theme.colorScheme.secondaryContainer,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 190.h,
                                  child: Divider(
                                    color: theme.colorScheme.secondaryContainer,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  height: 100.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: theme.colorScheme.secondaryContainer,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 101.h,
                                  margin: EdgeInsets.fromLTRB(
                                      21.h, 18.v, 68.h, 3.v),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 78.v,
                                        child: VerticalDivider(
                                          width: 3.h,
                                          thickness: 3.v,
                                          color: appTheme.orangeA20004,
                                        ),
                                      ),
                                      Spacer(
                                        flex: 50,
                                      ),
                                      SizedBox(
                                        height: 79.v,
                                        child: VerticalDivider(
                                          width: 3.h,
                                          thickness: 3.v,
                                          color: appTheme.orangeA20004,
                                          indent: 31.h,
                                        ),
                                      ),
                                      Spacer(
                                        flex: 50,
                                      ),
                                      SizedBox(
                                        height: 79.v,
                                        child: VerticalDivider(
                                          width: 3.h,
                                          thickness: 3.v,
                                          color: appTheme.orangeA20004,
                                          indent: 36.h,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Container(
                          width: 106.h,
                          margin: EdgeInsets.only(
                            left: 17.h,
                            right: 66.h,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "1",
                                style: theme.textTheme.labelLarge,
                              ),
                              Spacer(
                                flex: 52,
                              ),
                              Text(
                                "2",
                                style: theme.textTheme.labelLarge,
                              ),
                              Spacer(
                                flex: 47,
                              ),
                              Text(
                                "3",
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(left: 76.h),
                          child: Text(
                            "Week",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
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
}
