import 'package:shared_preferences/shared_preferences.dart';

class SharePreferenceManage {
  late SharedPreferences _sharePreferenceManage;

  Future<void> init() async {
    _sharePreferenceManage = await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) =>
      _sharePreferenceManage.setString(key, value);

  String? getString(String key) => _sharePreferenceManage.getString(key);

  Future<bool> setInt(String key, int value) =>
      _sharePreferenceManage.setInt(key, value);

  int? getInt(String key) => _sharePreferenceManage.getInt(key);

  bool? getBool(String key) => _sharePreferenceManage.getBool(key);

  Future<bool> setBool(String key, bool value) {
    return _sharePreferenceManage.setBool(key, value);
  }
}
