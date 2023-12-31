import 'package:flutter/material.dart';
import 'package:thrive_quit_application/presentation/discover_list_view_page/discover_list_view_page.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/presentation/logo_page_one_screen/logo_page_one_screen.dart';
import 'package:thrive_quit_application/presentation/logo_page_screen/logo_page_screen.dart';
import 'package:thrive_quit_application/presentation/intro_page_screen/intro_page_screen.dart';
import 'package:thrive_quit_application/presentation/login_page_screen/login_page_screen.dart';
import 'package:thrive_quit_application/presentation/credentials_page_one_screen/credentials_page_one_screen.dart';
import 'package:thrive_quit_application/presentation/credentials_page_2_screen/credentials_page_2_screen.dart';
import 'package:thrive_quit_application/presentation/info_page_screen/info_page_screen.dart';
import 'package:thrive_quit_application/presentation/home_page_one_container_screen/home_page_one_container_screen.dart';
import 'package:thrive_quit_application/presentation/tracker_page_tab_container_screen/tracker_page_tab_container_screen.dart';
import 'package:thrive_quit_application/presentation/savings_screen/savings_screen.dart';
import 'package:thrive_quit_application/presentation/community_hub_general_screen/community_hub_general_screen.dart';
import 'package:thrive_quit_application/presentation/community_hub_post_screen/community_hub_post_screen.dart';
import 'package:thrive_quit_application/presentation/other_profile_screen/other_profile_screen.dart';
import 'package:thrive_quit_application/presentation/emergency_page_screen/emergency_page_screen.dart';
import 'package:thrive_quit_application/presentation/sos_activation_screen/sos_activation_screen.dart';
import 'package:thrive_quit_application/presentation/tip_page_screen/tip_page_screen.dart';
import 'package:thrive_quit_application/presentation/breathing_excercises_intro/breathing_excercises_intro.dart';
import 'package:thrive_quit_application/presentation/breathing_exercises_one_screen/breathing_exercises_one_screen.dart';
import 'package:thrive_quit_application/presentation/breathing_exercises_with_gif_screen/breathing_exercises_with_gif_screen.dart';
import 'package:thrive_quit_application/presentation/discover_list_view_tab_container_screen/discover_list_view_tab_container_screen.dart';
import 'package:thrive_quit_application/presentation/discover_detailed_view_recovery_programs_screen/discover_detailed_view_recovery_programs_screen.dart';
import 'package:thrive_quit_application/presentation/discover_detailed_view_rehab_centers_screen/discover_detailed_view_rehab_centers_screen.dart';
import 'package:thrive_quit_application/presentation/discover_individual_detailed_view_rehab_centers_screen/discover_individual_detailed_view_rehab_centers_screen.dart';
import 'package:thrive_quit_application/presentation/discover_indvidual_detailed_view_recovery_programs_screen/discover_indvidual_detailed_view_recovery_programs_screen.dart';
import 'package:thrive_quit_application/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:thrive_quit_application/widgets/discover_page.dart';
import 'package:thrive_quit_application/widgets/home_page_with_navigation.dart';

class AppRoutes {
  static const String logoPageOneScreen = '/logo_page_one_screen';

  static const String logoPageScreen = '/logo_page_screen';

  static const String introPageScreen = '/intro_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String credentialsPageOneScreen = '/credentials_page_one_screen';

  static const String credentialsPage2Screen = '/credentials_page_2_screen';

  static const String infoPageScreen = '/info_page_screen';

  static const String homePageOnePage = '/home_page_one_page';

  static const String homePageOneContainerScreen =
      '/home_page_one_container_screen';

  static const String trackerPage = '/tracker_page';

  static const String trackerPageTabContainerScreen =
      '/tracker_page_tab_container_screen';

  static const String savingsScreen = '/savings_screen';

  static const String communityHubGeneralScreen = '/community_hub_general_screen';

  static const String communityHubPostScreen = '/community_hub_post_screen';

  static const String otherProfileScreen= '/other_profile_screen';

  static const String emergencyPageScreen = '/emergency_page_screen';

  static const String sosActivationScreen = '/sos_activation_screen';

  static const String tipPageScreen = '/tip_page_screen';

  static const String breathingExercisesIntroScreen = '/breathing_exercises_screen';

  static const String breathingExercisesOneScreen =
      '/breathing_exercises_one_screen';

  static const String breathingExercisesWithGifScreen =
      '/breathing_exercises_with_gif_screen';

  static const String discoverListViewPage = '/discover_list_view_page';

  static const String discoverListViewTabContainerScreen =
      '/discover_list_view_tab_container_screen';

  static const String discoverMapViewPage = '/discover_map_view_page';

  static const String discoverDetailedViewRecoveryProgramsScreen =
      '/discover_detailed_view_recovery_programs_screen';

  static const String discoverDetailedViewRehabCentersScreen =
      '/discover_detailed_view_rehab_centers_screen';

  static const String discoverIndividualDetailedViewRehabCentersScreen =
      '/discover_individual_detailed_view_rehab_centers_screen';

  static const String discoverIndvidualDetailedViewRecoveryProgramsScreen =
      '/discover_indvidual_detailed_view_recovery_programs_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String homePage = '/home_page_with_navigation';

  static const String discoverPage = '/discover_page';

  static Map<String, WidgetBuilder> routes = {
    homePage:(context) => HomePage(),
    logoPageOneScreen: (context) => LogoPageOneScreen(),
    logoPageScreen: (context) => LogoPageScreen(),
    introPageScreen: (context) => IntroPageScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    homePageOnePage:(context) => HomePageOnePage(),
    credentialsPageOneScreen: (context) => CredentialsPageOneScreen(),
    credentialsPage2Screen: (context) => CredentialsPage2Screen(),
    infoPageScreen: (context) => InfoPageScreen(),
    homePageOneContainerScreen: (context) => HomePageOneContainerScreen(),
    trackerPageTabContainerScreen: (context) => TrackerPageTabContainerScreen(),
    savingsScreen: (context) => SavingsScreen(),
    communityHubGeneralScreen: (context) => CommunityHubGeneralScreen(),
    communityHubPostScreen: (context) => CommunityHubPostScreen(),
    otherProfileScreen: (context) => OtherProfileScreen(),
    emergencyPageScreen: (context) => EmergencyPageScreen(),
    sosActivationScreen: (context) => SosActivationScreen(),
    tipPageScreen: (context) => TipPageScreen(),
    breathingExercisesIntroScreen: (context) => BreathingExercisesIntroScreen(),
    breathingExercisesOneScreen: (context) => BreathingExercisesOneScreen(),
    breathingExercisesWithGifScreen: (context) =>
        BreathingExercisesWithGifScreen(),
    discoverListViewTabContainerScreen: (context) =>
        DiscoverListViewTabContainerScreen(),
    discoverListViewPage:(context) => DiscoverListViewPage(),
    discoverDetailedViewRecoveryProgramsScreen: (context) =>
        DiscoverDetailedViewRecoveryProgramsScreen(),
    discoverDetailedViewRehabCentersScreen: (context) =>
        DiscoverDetailedViewRehabCentersScreen(),
    discoverIndividualDetailedViewRehabCentersScreen: (context) =>
        DiscoverIndividualDetailedViewRehabCentersScreen(),
    discoverIndvidualDetailedViewRecoveryProgramsScreen: (context) =>
        DiscoverIndvidualDetailedViewRecoveryProgramsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    discoverPage:(context) => DiscoverPage(),
  };
}
