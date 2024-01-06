import 'package:thrive_quit_application/widgets/custom_bottom_app_bar.dart';
import '../discover_list_view_page/widgets/rehabcenter_item_widget.dart';
import '../discover_list_view_page/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DiscoverListViewPage extends StatefulWidget {
  const DiscoverListViewPage({Key? key})
      : super(
          key: key,
        );

  @override
  DiscoverListViewPageState createState() => DiscoverListViewPageState();
}

class DiscoverListViewPageState extends State<DiscoverListViewPage>
    with AutomaticKeepAliveClientMixin<DiscoverListViewPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Column(
              children : [
              SizedBox(height: 15.v,),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          _buildUserProfile(context),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(context, AppRoutes.discoverDetailedViewRecoveryProgramsScreen),
                              child: Text(
                                "View All",
                                style: CustomTextStyles.labelLargeDMSansAmber900,
                              ),
                            ),
                          ),
                          SizedBox(height: 24.v),
                          _buildRehabCenters(context),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, AppRoutes.discoverDetailedViewRehabCentersScreen),
                        child: Text(
                          "View All",
                          style: CustomTextStyles.labelLargeDMSansAmber900,
                        ),
                      ),
                      SizedBox(height: 26.v),
                      SizedBox(
                        width: 232.h,
                        child: Divider(
                          color: appTheme.black90001,
                          indent: 97.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recovery Programs",
          style: CustomTextStyles.titleMediumGray900,
        ),
        Text(
          "Empowering addiction recovery through tailored support.",
          style: CustomTextStyles.labelSmallGray600,
        ),
        SizedBox(height: 7.v),
        SizedBox(
          height: 160.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 19.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Userprofile1ItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRehabCenters(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rehab Centers",
          style: CustomTextStyles.titleMediumGray900,
        ),
        Text(
          "Rehab centers provide comprehensive support for addiction recovery.",
          style: CustomTextStyles.labelSmallGray600,
        ),
        SizedBox(height: 7.v),
        SizedBox(
          height: 160.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 19.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return RehabcenterItemWidget();
            },
          ),
        ),
      ],
    );
  }
}
