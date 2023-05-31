import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
  static void showToast(
      {required String msg, int duration = 2000, bool dismissOnTap = false}) {
    EasyLoading.showToast(msg,
        duration: Duration(milliseconds: duration),
        toastPosition: EasyLoadingToastPosition.center,
        dismissOnTap: dismissOnTap);
  }

  //// 作者 jiangjunhui
  /// 时间 2023/4/24
  /// 功能描述 loading
  static void showLoading({required String msg, bool dismissOnTap = false}) {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..loadingStyle = EasyLoadingStyle.dark
      ..radius = 5.0
      ..maskColor = Colors.white.withOpacity(0.1);

    EasyLoading.show(
        status: msg,
        maskType: EasyLoadingMaskType.custom,
        dismissOnTap: dismissOnTap);
  }

  /// 弹窗消失
  static void dismiss() {
    EasyLoading.dismiss(animation: true);
  }
}
