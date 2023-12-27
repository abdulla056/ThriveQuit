import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thrive_quit_application/core/utils/size_utils.dart';
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
          initialRoute: AppRoutes.communityHubGeneralScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
