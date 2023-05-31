import 'package:flutter/widgets.dart';
import 'package:flutter_app_demo/thirdlib/router/router_url.dart';
import 'package:go_router/go_router.dart';

/// FileName screen_util.dart
///
/// @Author jiangjunhui
/// @Date 2023/4/24 14:58
///
/// @Description TODO

enum MyRouterEnum { push, present }

class MyRouter {
  /// 时间 2023/5/29
  /// 功能描述 路由跳转
  static router(
      {required RouterURL routerURL,
      Map<String, dynamic>? param,
      required BuildContext context,
      MyRouterEnum status = MyRouterEnum.push}) {
    final name = routerURL.name;
    Map<String, dynamic> queryParameters = param ?? Map<String, dynamic>();
    if (status == MyRouterEnum.push) {
      context.pushNamed(name, queryParameters: queryParameters);
    } else if (status == MyRouterEnum.present) {
      context.goNamed(name, queryParameters: queryParameters);
    }
  }
}
