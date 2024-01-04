import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/discover_list_view_page/discover_list_view_page.dart';
import 'package:thrive_quit_application/presentation/discover_map_view_page/discover_map_view_page.dart';

const List<Widget> view = <Widget>[
  Text('List View'),
  Text('Map View'),
];

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  int currentPageIndex = 0;
  final screens = [
    DiscoverListViewPage(),
    DiscoverMapViewPage(),
  ]; 
  final List<bool> _selectedPage = <bool>[true, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20.v,),
              Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
              children: [
              Text(
                'Discover',
                style: CustomTextStyles.headlineLargeBlack90001,
              ),
              Text(
                'Discover upcoming events near you',
                style: CustomTextStyles.bodyMediumGray900,
              ),
              SizedBox(height: 15.v,),
                ToggleButtons(
                  direction:  Axis.horizontal,
                  onPressed: (int index) {
                    setState(() {
                      // The button that is tapped is set to true, and the others to false.
                      for (int i = 0; i < _selectedPage.length; i++) {
                        _selectedPage[i] = i == index;
                      }
                      currentPageIndex = index;
                    });
                  },
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                //selectedBorderColor: Colors.grey,
                selectedColor: Colors.white,
                fillColor: Colors.orange,
                color: Color(0xff545555),
                  constraints: const BoxConstraints(
                  minHeight: 35.0,
                  minWidth: 95.0,
                ),
                children: view,
                isSelected: _selectedPage,),
                screens[currentPageIndex],
              ],
              )
              ),
            ],
          ),
        ),
      )
    );
  }
}