import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/data/registration_pages.dart';
import 'package:thrive_quit_application/widgets/custom_icon_button.dart';


const List<Widget> icons = <Widget>[
  Icon(Icons.man_2_outlined, size: 90,),
  Icon(Icons.woman_2_outlined, size: 90,),
];

class CredentialsPage2Screen extends StatefulWidget {
  const CredentialsPage2Screen({Key? key})
      : super(
          key: key,
        );

  @override
  State<CredentialsPage2Screen> createState() => _CredentialsPage2ScreenState();

}

class _CredentialsPage2ScreenState extends State<CredentialsPage2Screen> {

  double _currentHeightSliderValue = 170;
  double _currentWeightSliderValue = 70;

  final List<bool> _selectedGender = <bool>[true, false];
  List<String> genderList = ['Male', 'Female',];
  

  @override
  Widget build(BuildContext context) {

    int selectedIndex = _selectedGender.indexOf(true); // accessing the selected gender
    String selectedValue = genderList[selectedIndex];

    return Theme(
      data: ThemeData.light(),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 0.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 292.h,
                    margin: EdgeInsets.only(left: 5.h, right: 30.h, top: 10.v),
                    child: Text(
                      "Give us some basic information",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.headlineLarge?.copyWith(fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(height: 38.v),
                _buildBasicInfo(context),
                SizedBox(height: 41.v),
                _buildHeightInfo(context),
                SizedBox(height: 41.v),
                _buildWeightInfo(context),
                SizedBox(height: 64.v),
                Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: CustomIconButton(
                    onTap: () {
              // Create an instance of UserInformation with user input
                HealthInformation data = HealthInformation();
                // Store data in the database
                data.updateHealth(
                  selectedValue,
                  _currentHeightSliderValue,
                  _currentWeightSliderValue,);
                Navigator.pushNamed(context, AppRoutes.infoPageScreen);
                    },
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
      ),
    );
  }

  /// Section Widget
  Widget _buildBasicInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 11.h,
      ),
      child: Column(
        children : [
          SizedBox(height: 10.v,),
          // Text(
          //     "Gender",
          //     style: CustomTextStyles.titleLargeGray900_1,
          //   ),
            //SizedBox(height: 10.v,),
          ToggleButtons(
          fillColor: const Color.fromARGB(255, 254, 171, 46),
          selectedColor: Colors.white,
          children: icons,
          //borderWidth: 30,
          //borderColor: Colors.white,
          //selectedBorderColor: Colors.white,
          isSelected: _selectedGender,
          onPressed: (int index) {
            setState(() {
              for (int i = 0; i < _selectedGender.length; i++) {
                        _selectedGender[i] = i == index;
              }
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10.h,),
            Text(
              "Male",
              style: CustomTextStyles.titleSmallGray900Medium,
            ),
            SizedBox(width: 45.h,),
            Text(
              "Female",
              style: CustomTextStyles.titleSmallGray900Medium,
            ),
          ],
        )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeightInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Height",
              style: CustomTextStyles.titleLargeGray900_1,
            ),
          ),
          SizedBox(
            height: 21.v
            ),
          Row(
            children: [
              SizedBox(width: 5.h,),
              CustomImageView(
                imagePath: 'assets/images/height_short.png',
              ),
              SizedBox(
              height: 54.8.v,
              width: 295.h,
              child: Slider(
                activeColor: const Color.fromARGB(255, 210, 126, 0),
                value: _currentHeightSliderValue,
                max: 300,
                min: 50,
                divisions: 250,
                label: (_currentHeightSliderValue.round().toString()+ ' cm'),
                onChanged: (double value) {
                  setState(() {
                  _currentHeightSliderValue = value;
                  },
                );
              }
            )
            ),
            CustomImageView(
              imagePath: 'assets/images/height_tall.png',
            )
            ],
          ),
          //SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 7.h,
            ),
            child: _buildWeight(
              context,
              text1: "50 cm",
              text2: "300 cm",
            ),
          ),
        ],
      ),
    );
  }

    Widget _buildWeightInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Weight",
              style: CustomTextStyles.titleLargeGray900_1,
            ),
          ),
          SizedBox(
            height: 21.v
            ),
          Row(
            children: [
              SizedBox(width: 5.h,),
              CustomImageView(
                imagePath: 'assets/images/height_short.png',
              ),
              SizedBox(
              height: 54.8.v,
              width: 295.h,
              child: Slider(
                activeColor: const Color.fromARGB(255, 210, 126, 0),
                value: _currentWeightSliderValue,
                max: 250,
                min: 20,
                divisions: 230,
                label: (_currentWeightSliderValue.round().toString() + ' kg'),
                onChanged: (double value) {
                  setState(() {
                  _currentWeightSliderValue = value;
                  },
                );
              }
            )
            ),
            CustomImageView(
              imagePath: 'assets/images/height_tall.png',
            )
            ],
          ),
          //SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 7.h,
            ),
            child: _buildWeight(
              context,
              text1: "20 kg",
              text2: "250 kg",
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWeight(
    BuildContext context, {
    required String text1,
    required String text2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: CustomTextStyles.labelLargeDMSansGray900_4.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          text2,
          style: CustomTextStyles.labelLargeDMSansGray900_4.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }
}
