import 'package:flutter/material.dart';

/// FileName router_observer.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/22 15:53
///
/// @Description TODO

class RouterObserver extends NavigatorObserver {
  void log(value) => debugPrint('MyNavObserver:$value');

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) => log(
      'didPush: ${route.toString()}, previousRoute= ${previousRoute?.toString()}');

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) => log(
      'didPop: ${route.toString()}, previousRoute= ${previousRoute?.toString()}');

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) => log(
      'didRemove: ${route.toString()}, previousRoute= ${previousRoute?.toString()}');

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) => log(
      'didReplace: new= ${newRoute?.toString()}, old= ${oldRoute?.toString()}');

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) =>
      log('didStartUserGesture: ${route.toString()}, '
          'previousRoute= ${previousRoute?.toString()}');

  @override
  void didStopUserGesture() => log('didStopUserGesture');
}
