import 'package:flutter/material.dart';
import 'package:flutter_app_demo/thirdlib/router/router_util.dart';
import 'package:flutter_app_demo/widgets/my_buttom.dart';

import '../../thirdlib/router/router_page.dart';

/// FileName router_test.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/30 15:49
///
/// @Description TODO
class RouterTestPage extends StatelessWidget {
  const RouterTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          children: [
            MyButton(
                child: Text("push 个人中心", style: TextStyle(color: Colors.black)),
                onPressed: () {
                  MyRouter.router(
                      routerURL: RouterPages.mineUrl, context: context);
                }),
            MyButton(
                child:
                    Text("present 个人中心", style: TextStyle(color: Colors.black)),
                onPressed: () {
                  MyRouter.router(
                      routerURL: RouterPages.mineUrl,
                      context: context,
                      status: MyRouterEnum.present);
                }),
          ],
        ),
      ),
    );
  }
}
