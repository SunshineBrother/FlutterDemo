import 'package:flutter/material.dart';
import 'package:flutter_app_demo/thirdlib/screen_util/screen_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// FileName screenUtil_test.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/17 15:23
///
/// @Description TODO

class ScreenUtilPage extends StatelessWidget {
  const ScreenUtilPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double bottomBarHeight = kBottomBarHeight();
    double statusBarHeight = kStatusBarHeight();
    double screenWidth = kScreenWidth();
    double screenHeight = kScreenHeight();
    print("屏幕kBottomBarHeight：$bottomBarHeight");
    print("屏幕kStatusBarHeight：$statusBarHeight");
    print("屏幕宽度：$screenWidth");
    print("屏幕高度：$screenHeight");

    double w = 100.px;
    double h = 100.px;
    print("宽：$w  高：$h");

    return Scaffold(
      appBar: AppBar(
        title: Text('布局适配'),
      ),
      body: Container(
        child: Row(
          children: [
            Container(
              color: Colors.red,
              child: Text("width: 100.px，height: 100.px"),
              width: 100.px,
              height: 100.px,
            ),
            Container(
              color: Colors.red,
              child: Text("width: 200.rpx, height: 200.rpx,"),
              width: 200.rpx,
              height: 200.rpx,
            ),
            Container(
              color: Colors.red,
              child: Text("width: 100，height: 100"),
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
