import 'package:flutter/material.dart';
import 'package:flutter_app_demo/generated/l10n.dart';

/// FileName login_page.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/22 16:29
///
/// @Description TODO
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.login),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
