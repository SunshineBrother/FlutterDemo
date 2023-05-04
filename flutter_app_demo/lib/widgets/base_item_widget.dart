import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// FileName base_item_widget.dart
///
/// @Author jiangjunhui
/// @Date 2023/4/25 16:32
///
/// @Description TODO
class ListItemWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;

  const ListItemWidget({Key? key, required this.title, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 45,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text('$title'),
      ),
    );
  }
}
