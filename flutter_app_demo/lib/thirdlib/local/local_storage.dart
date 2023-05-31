import 'package:shared_preferences/shared_preferences.dart';

/// FileName local_storage.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/17 13:48
///
/// @Description TODO

///SharedPreferences 本地存储
class LocalStorage {
  static save(String key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static get(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  static remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
