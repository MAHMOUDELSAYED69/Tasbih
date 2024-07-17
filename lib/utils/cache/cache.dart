
import 'package:shared_preferences/shared_preferences.dart';
class CacheData {
  static late SharedPreferences sharedpref;
  static Future<void> cacheDataInit() async {
    sharedpref = await SharedPreferences.getInstance();
  }

  static Future<void> setInt({required String key, required int value}) async =>
      await sharedpref.setInt(key, value);

  static dynamic getInt({required String key}) {
    return sharedpref.get(key);
  }

  static Future<void> clearData() async {
    await sharedpref.clear();
  }
}
