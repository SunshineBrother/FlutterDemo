import 'package:flutter/material.dart';

/// FileName my_buttom.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/30 15:53
///
/// @Description TODO
class MyButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  const MyButton({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  /// 是否可以点击
  bool _isUserEnabled = true;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          if (_isUserEnabled == true) {
            widget.onPressed();
          }
          _isUserEnabled = false;
          Future.delayed(Duration(seconds: 1), (() {
            _isUserEnabled = true;
          }));
        },
        child: widget.child);
  }
}
