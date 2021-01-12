import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs{

  static final String isExistingUserSharedPrefs = "IsExistingUser";

  static Future setIsExistingUserSharedPrefs(bool isExistingUser) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(isExistingUserSharedPrefs, isExistingUser);
  }

  static Future<bool> getIsExistingUserSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(isExistingUserSharedPrefs);
  }

}