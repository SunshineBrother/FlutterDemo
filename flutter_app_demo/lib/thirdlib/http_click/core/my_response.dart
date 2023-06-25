import 'dart:ffi';
import 'my_error.dart';
import 'my_request.dart';

/// FileName my_response.dart
///
/// @Author jiangjunhui
/// @Date 2023/6/8 14:01
///
/// @Description TODO

class MyResopnse {
  /// 响应对应的请求配置。
  MyRequest requestOptions;

  /// 响应的 HTTP 状态码。
  int? statusCode;

  /// 响应对应状态码的详情信息。
  String? statusMessage;

  /// 返回值
  dynamic data;

  /// 错误信息
  MyDioException? error;

  MyResopnse(
      this.requestOptions, this.statusCode, this.statusMessage, this.data);
}
