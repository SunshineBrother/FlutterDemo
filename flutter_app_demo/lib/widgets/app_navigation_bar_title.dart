import 'package:flutter/material.dart';

/// FileName app_navigation_bar_title.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/22 16:45
///
/// @Description TODO
class AppNavigationBarTitle extends StatelessWidget {
  final String title;
  const AppNavigationBarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
