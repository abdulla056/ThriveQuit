import 'package:thrive_quit_application/data/user_data.dart';
import 'package:thrive_quit_application/models/user.dart';


class DashboardController {

  final now = DateTime.now();
  String displayName = '';
  int totalDaysSinceSmoked = 0;
  int yearsCounter = 0;
  int monthsCounter = 0;
  int daysCounter = 0;
  String totalMoneySaved = '';

  Future<void> dashboardData() async {
    try {
      // Call the getUserFromFirestore function
      UserModel user = await getUserFromFirestore();

      // Assign the value to the instance variable
      displayName = user.firstName;

      // Progress tracker bar
      DateTime dateOfLastCigarette = DateTime.parse(user.dateOfLastCigarette);
      totalDaysSinceSmoked = now.difference(dateOfLastCigarette).inDays; 

      yearsCounter = (totalDaysSinceSmoked ~/ 365);

      monthsCounter = ((totalDaysSinceSmoked - (365*yearsCounter)) ~/ 30);

      daysCounter = (totalDaysSinceSmoked - (365*yearsCounter) - (30*monthsCounter));

      // savings
      totalMoneySaved = (totalDaysSinceSmoked * int.parse(user.cigarettesAverageCost) * int.parse(user.cigarettesSmokedPerDay)).toString(); 

    } catch (e) {
      print('Error fetching dashboard data: $e');
    }
  }
}
