import 'package:shared_preferences/shared_preferences.dart';

class StepsPreference {
  static setSteps(int steps) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('steps', steps);
  }

  static Future<int> getSteps() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('steps') ?? 0;
  }
}
