import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) => _instance.setBool(key, value);

  static bool getBool(String key) => _instance.getBool(key) ?? false;

  static setString(String key, String value) async =>
      await _instance.setString(key, value);

  static getString(String key) => _instance.getString(key) ?? '';

  static remove(String key) => _instance.remove(key);
}
