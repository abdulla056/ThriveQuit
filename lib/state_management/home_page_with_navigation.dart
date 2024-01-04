import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/breathing_excercises_intro/breathing_excercises_intro.dart';
import 'package:thrive_quit_application/presentation/community_hub_general_screen/community_hub_general_screen.dart';
import 'package:thrive_quit_application/presentation/health_combined_screen/health_combined_screen.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/presentation/other_profile_screen/other_profile_screen.dart';
import 'package:thrive_quit_application/presentation/settings_page_screen/settings_page_screen.dart';
import 'package:thrive_quit_application/presentation/tip_page_screen/tip_page_screen.dart';
import 'package:thrive_quit_application/state_management/discover_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPageIndex = 0;
  final screens = [
    HomePageOnePage(),
    TipPageScreen(),
    DiscoverPage(),
    CommunityHubGeneralScreen(),
    SettingsPageScreen(),
  ]; 
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
        return Scaffold(
          body : screens[currentPageIndex],
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: Colors.orange,
          //   child : Icon(Icons.location_on_outlined),
          //   onPressed: () => Navigator.pushNamed(context, AppRoutes.discoverPage),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: 
              NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              backgroundColor: Colors.grey.shade200,
              indicatorColor: Colors.orange,
              selectedIndex: currentPageIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(Icons.dashboard),
                  icon: Icon(Icons.dashboard_outlined),
                  label: 'Dashboard',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.school),
                  icon: Icon(Icons.school_outlined),
                  label: 'Tips',
                ),
                Card(
                  elevation: 50,
                  color: Colors.orange,
                  child: SizedBox(
                    width: 500,
                    height: 100,
                    child: NavigationDestination(
                      selectedIcon: Icon(Icons.location_on_sharp),
                      icon: Icon(Icons.location_on_outlined,), 
                      label: 'Discover',),
                  ),
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.people_alt),
                  icon: Icon(Icons.people_alt_outlined),
                  label: 'Community',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.account_circle),
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'Profile',
                  ),
              ],
            ),
        );
  }
}
