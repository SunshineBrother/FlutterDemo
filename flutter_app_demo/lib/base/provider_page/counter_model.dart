import 'package:flutter/cupertino.dart';
// 定义需要共享的数据模型，通过混入 ChangeNotifier 管理听众
class CounterModel with ChangeNotifier {
  int _count = 0;
  // 读方法
  int get counter => _count;
  // 写方法
  void increment() {
    print(_count.toString());
    _count++;
    notifyListeners();// 通知听众刷新
  }
}











