import 'package:flutter/material.dart';
import 'package:flutter_app_demo/widgets/app_navigation_bar_title.dart';

import '../../generated/l10n.dart';

/// FileName show_Dialog.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/30 15:10
///
/// @Description TODO
class ShowDialogPage extends StatelessWidget {
  const ShowDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      showDialog(
        // 传入 context
        context: context,
        // 构建 Dialog 的视图
        builder: (_) => Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text('Custom Dialog',
                          style: TextStyle(
                              fontSize: 16, decoration: TextDecoration.none)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 8),
                      child: TextButton(
                          onPressed: () {
                            // 关闭 Dialog
                            Navigator.pop(_);
                          },
                          child: Text('确定')),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: AppNavigationBarTitle(title: S.current.show_dialog),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  _showDialog();
                },
                child: Text("showDialog")),
          ],
        ),
      ),
    );
  }
}
