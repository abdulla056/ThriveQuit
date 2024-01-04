import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:thrive_quit_application/core/utils/size_utils.dart';
import 'package:thrive_quit_application/presentation/breathing_excercises_intro/breathing_excercises_intro.dart';
import 'package:thrive_quit_application/presentation/community_hub_general_screen/community_hub_general_screen.dart';
import 'package:thrive_quit_application/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:thrive_quit_application/presentation/other_profile_screen/other_profile_screen.dart';
import 'package:thrive_quit_application/theme/theme_helper.dart';
import 'package:thrive_quit_application/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'thrive_quit_application',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.homePage,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
