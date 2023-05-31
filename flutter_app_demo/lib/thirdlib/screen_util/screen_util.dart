import 'package:flutter_screenutil/flutter_screenutil.dart';

/// FileName screen_util.dart
///
/// @Author jiangjunhui
/// @Date 2023/4/24 14:58
///
/// @Description TODO

/// 底部安全区距离，适用于全面屏下面有按键的
double kBottomBarHeight() => ScreenUtil().bottomBarHeight;

/// 状态栏高度 刘海屏会更高
double kStatusBarHeight() => ScreenUtil().statusBarHeight;

/// screenHeight
double kScreenHeight() => ScreenUtil().screenHeight;

/// screenWidth
double kScreenWidth() => ScreenUtil().screenWidth;

extension MyScreenUtil on num {
  /// 375
  double get px {
    return this.w;
  }

  /// 750
  double get rpx {
    return this.px / 2;
  }

  /// 宽百分比
  double get w_rate {
    return this.sw;
  }

  /// 高百分比
  double get h_rate {
    return this.sh;
  }
}
