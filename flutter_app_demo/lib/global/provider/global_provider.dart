import 'package:flutter/widgets.dart';

/// FileName lan_provider.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/5 17:32
///
/// @Description TODO
class LanPovider with ChangeNotifier {
  // 默认支持语言
  Locale _locale = const Locale('zh', 'CN');

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  Locale getLocale() {
    return _locale;
  }
}
