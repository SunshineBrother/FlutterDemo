import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/test_third/router_test.dart';
import 'package:flutter_app_demo/base/test_third/screenUtil_test.dart';
import 'package:flutter_app_demo/base/test_third/toast_test.dart';
import 'package:flutter_app_demo/widgets/base_item_widget.dart';

/// FileName test_third.dart
///
/// @Author jiangjunhui
/// @Date 2023/4/25 16:06
///
/// @Description TODO

class TestThirdLidPage extends StatelessWidget {
  const TestThirdLidPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('测试三方库')),
      body: TestLibWidget(),
    );
  }
}

class TestLibWidget extends StatelessWidget {
  const TestLibWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        GestureDetector(
          child: ListItemWidget(title: "测试Loading"),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return TestToastWidget();
            }));
          },
        ),
        GestureDetector(
          child: ListItemWidget(title: "布局测试"),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return ScreenUtilPage();
            }));
          },
        ),
        GestureDetector(
          child: ListItemWidget(title: "测试路由"),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return RouterTestPage();
            }));
          },
        )
      ],
    ));
  }
}
