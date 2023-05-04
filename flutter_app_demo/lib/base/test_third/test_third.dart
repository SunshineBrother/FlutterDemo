import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        TextButton(
          style: ButtonStyle(),
          child: Text("测试Loading"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return TestToastWidget();
            }));
          },
        ),
        ListItemWidget(title: "测试")
      ],
    ));
  }
}
