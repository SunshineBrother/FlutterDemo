import 'dart:async';

import 'package:flutter_app_demo/pages/commerce/cart/shopping_cart.dart';
import 'package:flutter_app_demo/pages/goods_detail/goods_detail.dart';
import 'package:flutter_app_demo/pages/login/login_page.dart';
import 'package:flutter_app_demo/pages/user/mine/mine_page.dart';
import 'package:flutter_app_demo/root_pages.dart';
import 'package:flutter_app_demo/thirdlib/router/router_observer.dart';
import 'package:flutter_app_demo/commonPages/unknown_page.dart';
import 'package:flutter_app_demo/thirdlib/router/router_url.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

/// FileName router_page.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/22 17:42
///
/// @Description TODO

class RouterPages {
  /// 首页
  static RouterURL homeUrl = const RouterURL(name: 'home', path: 'home');

  /// 登录
  static RouterURL loginUrl = const RouterURL(name: "login", path: "login");

  /// 商品详情
  static RouterURL goodsDetailsUrl =
      RouterURL(name: 'goodsDetails', path: 'goodsDetails');

  /// 个人中心
  static RouterURL mineUrl = RouterURL(name: 'mine', path: 'mine');

  /// 购物车
  static RouterURL shoppingCartUrl =
      RouterURL(name: 'shoppingCart', path: 'shoppingCart');

  /// 首页
  static RouteBase homeRouter = GoRoute(
      name: homeUrl.name,
      path: homeUrl.path,
      pageBuilder: (_, GoRouterState state) => CustomTransitionPage(
          child: RootPage(),
          transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) =>
              FadeTransition(opacity: animation, child: child)));

  /// 登录
  static RouteBase loginRouter = GoRoute(
      name: loginUrl.name,
      path: loginUrl.path,
      builder: (context, state) => LoginPage());

  /// 个人中心
  static RouteBase mineRouter = GoRoute(
      name: mineUrl.name,
      path: mineUrl.path,
      builder: (context, state) => MinePage());

  /// 购物车
  static RouteBase shoppingCartRouter = GoRoute(
      name: shoppingCartUrl.name,
      path: shoppingCartUrl.path,
      pageBuilder: (_, GoRouterState state) => CustomTransitionPage(
          child: ShoppingCartPage(),
          transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) =>
              FadeTransition(opacity: animation, child: child)));

  static RouteBase goodsDetailsUrlRouter = GoRoute(
      name: goodsDetailsUrl.name,
      path: goodsDetailsUrl.path,
      builder: (context, state) {
        final String gooodsId = state.queryParameters['goodsId'] ?? "";
        return GoodsDetails(goodsId: gooodsId);
      },
      redirect: redirectUrl);
}

FutureOr<String?> redirectUrl(BuildContext context, GoRouterState state) {
  debugPrint('loginRedirect :${state.name}');
  final String userId = "";
  if (userId.isEmpty) {
    return state.namedLocation(RouterPages.loginUrl.name);
  }
  return null;
}

final router = GoRouter(
    initialLocation: '/',
    errorBuilder: (context, GoRouterState state) {
      return UnknownPage();
    },
    debugLogDiagnostics: true,
    observers: [
      RouterObserver()
    ],
    routes: [
      GoRoute(
          path: "/",
          name: "home",
          builder: (_, state) => RootPage(),
          routes: [
            RouterPages.loginRouter,
            RouterPages.mineRouter,
            RouterPages.goodsDetailsUrlRouter,
            RouterPages.shoppingCartRouter
          ])
    ]);
