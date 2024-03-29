import 'dart:ffi';

import 'package:dio/dio.dart';

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
      {required this.method,
      required this.urlStr,
      Map<String, dynamic>? params});

  Options getDioOptions() {
    final options = Options(
        headers: _headers,
        contentType: _contentType,
        sendTimeout: connectTimeout);
    return options;
  }
}
