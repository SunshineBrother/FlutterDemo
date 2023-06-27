import '../my_cache/my_cache_policy.dart';

/// FileName my_dio_configure.dart
///
/// @Author jiangjunhui
/// @Date 2023/6/27 10:38
///
/// @Description 网络请求配置项
class MyDioConfigure {
  /// 缓存策略
  MyDioCachePolicy? cachePolicy;

  /// 是否弹出错误信息
  bool showErrorLog = true;
}
