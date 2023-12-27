import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgGridOrange90001,
        activeIcon: ImageConstant.imgGridOrange90001,
        title: "Dashboard",
        type: BottomBarEnum.Dashboard,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavEducation,
      activeIcon: ImageConstant.imgNavEducation,
      title: "Education",
      type: BottomBarEnum.Education,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroupOrange90001,
      activeIcon: ImageConstant.imgGroupOrange90001,
      title: "Community",
      type: BottomBarEnum.Community,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettings,
      activeIcon: ImageConstant.imgSettings,
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        15.h,
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: appTheme.black90001.withOpacity(0.81),
        child: SizedBox(
          height: 25.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    widget.onChanged?.call(bottomMenuList[index].type);
                    setState(() {});
                  },
                  child: bottomMenuList[index].isSelected
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: bottomMenuList[index].activeIcon,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              color: appTheme.orange90001,
                            ),
                            Text(
                              bottomMenuList[index].title ?? "",
                              style: theme.textTheme.labelSmall!.copyWith(
                                color: appTheme.orange90001,
                              ),
                            ),
                          ],
                        )
                      : SizedBox(
                          height: 34.v,
                          width: 41.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: bottomMenuList[index].icon,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                color: appTheme.orange90001,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(
                                  left: 8.h,
                                  right: 8.h,
                                  bottom: 9.v,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 23.v),
                                  child: Text(
                                    bottomMenuList[index].title ?? "",
                                    style: theme.textTheme.labelSmall!.copyWith(
                                      color: appTheme.orange90001,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Dashboard,
  Education,
  Community,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
