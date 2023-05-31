import 'package:flutter/material.dart';
import '../../../widgets/app_navigation_bar_title.dart';

/// FileName mine_page.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/22 16:43
///
/// @Description TODO

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);
  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppNavigationBarTitle(title: "个人中心"),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
