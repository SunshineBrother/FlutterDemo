import 'dart:ffi';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// FileName toast.dart
///
/// @Author jiangjunhui
/// @Date 2023/4/24 15:08
///
/// @Description TODO
class Toast {
  //// 作者 jiangjunhui
  /// 时间 2023/4/24
  /// 功能描述 显示提升信息
  static void showToast({required String msg, int duration = 2000}) {
    Fluttertoast.showToast(msg: msg, timeInSecForIosWeb: duration);
  }

  //// 作者 jiangjunhui
  /// 时间 2023/4/24
  /// 功能描述 loading
  static void showLoading({required String msg}) {
    EasyLoading.showToast(msg);
  }

  /// 弹窗消失
  static void dismiss() {
    EasyLoading.dismiss(animation: true);
  }
}