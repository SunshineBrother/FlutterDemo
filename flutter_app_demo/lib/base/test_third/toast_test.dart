import 'package:flutter/material.dart';
import 'package:flutter_app_demo/thirdlib/toast/toast.dart';

/// FileName toast_test.dart
///
/// @Author jiangjunhui
/// @Date 2023/4/24 15:39
///
/// @Description TODO
class TestToastWidget extends StatelessWidget {
  const TestToastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("toast")),
      body: Container(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Toast.showToast(msg: "我是一个toast");
                },
                child: Text("我是一个toast")),
            SizedBox(height: 50),
            TextButton(
                onPressed: () {
                  Toast.showLoading(msg: "我是一个loading");
                },
                child: Text("我是一个loading")),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
