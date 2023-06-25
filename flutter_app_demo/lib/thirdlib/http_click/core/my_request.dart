import 'dart:ffi';

import 'package:dio/dio.dart';

import 'my_cache_policy.dart';

/// FileName my_request.dart
///
/// @Author jiangjunhui
/// @Date 2023/6/8 14:00
///
/// @Description TODO

/// 请求方式
enum MyRequestMethod { get, post }

class MyRequest {
  /// 基础url
  String baseUrl = "https://www.google.com/";

  /// 缓存类型
  MyDioCachePolicy? cache;

  /// 是否弹出错误信息
  bool showErrorLog = true;

  /// HTTP 请求头。
  Map<String, dynamic>? _headers;

  /// 连接服务器超时时间.
  Duration connectTimeout = Duration(seconds: 30);

  /// 编码类型
  String? _contentType;

  /// 请求方式
  final MyRequestMethod method;

  /// 请求路径
  String urlStr;

  /// 参数
  Map<String, dynamic>? params;
  MyRequest(
    this.method,
    this.urlStr,
    this.params,
  );

  Options getDioOptions() {
    final options = Options(
        headers: _headers,
        contentType: _contentType,
        sendTimeout: connectTimeout);
    return options;
  }
}
