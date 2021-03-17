import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorModel with ChangeNotifier {
  Color _color = Colors.red;
  // 读方法
  Color get color => _color;
  // 写方法
  void randomColor() {
    _color = Color.fromARGB(
        255,
        Random().nextInt(256)+0,
        Random().nextInt(256)+0,
        Random().nextInt(256)+0);
    notifyListeners();// 通知听众刷新
  }
}
