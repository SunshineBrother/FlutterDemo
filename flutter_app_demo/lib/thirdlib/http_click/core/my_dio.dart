import 'package:dio/dio.dart';
import 'package:flutter_app_demo/thirdlib/http_click/core/my_response.dart';
import 'package:rxdart/rxdart.dart';
import 'my_dio_configure.dart';
import 'my_request.dart';

/// FileName my_dio.dart
///
/// @Author jiangjunhui
/// @Date 2023/6/8 16:50
///
/// @Description TODO
///
///

final dio = Dio();

class MyDio {
  Future<PublishSubject<MyResopnse>> requestData(
      {required MyRequest request, MyDioConfigure? configure}) async {
    final path = request.urlStr;
    final params = request.params;
    final options = request.getDioOptions();
    final response =
        await dio.get(path, queryParameters: params, options: options);

    final ob = PublishSubject<MyResopnse>();
    return ob;
  }
}

class ka {
  void kkkkk() async {
    final request = MyRequest(method: MyRequestMethod.get, urlStr: "urlStr");
    final ob = await MyDio().requestData(request: request);
    ob.listen((value) {});
    ob.close();
  }
}
