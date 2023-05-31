import 'package:flutter/material.dart';
import 'package:flutter_app_demo/generated/l10n.dart';
import 'package:flutter_app_demo/widgets/app_navigation_bar_title.dart';

/// FileName userInfo_page.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/22 16:36
///
/// @Description TODO
class UserInfoPage extends StatefulWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppNavigationBarTitle(title: "用户信息"),
      ),
      body: Container(),
    );
  }
}
