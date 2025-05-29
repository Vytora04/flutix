import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static SharedPrefsService? _instance;
  static SharedPreferences? _prefs;

  SharedPrefsService._internal();

  static Future<SharedPrefsService> getInstance() async {
    if (_instance == null) {
      _instance = SharedPrefsService._internal();
      _prefs = await SharedPreferences.getInstance();
    }
    return _instance!;
  }

  // Save a string value
  Future<bool> setString(String key, String value) async {
    return await _prefs!.setString(key, value);
  }

  // Get a string value
  String? getString(String key) {
    return _prefs!.getString(key);
  }

  // Save a bool value
  Future<bool> setBool(String key, bool value) async {
    return await _prefs!.setBool(key, value);
  }

  // Get a bool value
  bool? getBool(String key) {
    return _prefs!.getBool(key);
  }

  // Save an int value
  Future<bool> setInt(String key, int value) async {
    return await _prefs!.setInt(key, value);
  }

  // Get an int value
  int? getInt(String key) {
    return _prefs!.getInt(key);
  }

  // Remove a value
  Future<bool> remove(String key) async {
    return await _prefs!.remove(key);
  }

  // Clear all values
  Future<bool> clear() async {
    return await _prefs!.clear();
  }
}
