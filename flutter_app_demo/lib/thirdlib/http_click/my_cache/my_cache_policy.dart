/// FileName my_cache_policy.dart
///
/// @Author jiangjunhui
/// @Date 2023/6/25 21:36
///
/// @Description 缓存策略
///
///
/// 缓存策略
enum MyCachePolicy {
  /// 不用缓存
  none,

  /// 先用缓存，在请求网络，得到网络数据后覆盖缓存
  firstCache,

  /// 先请求网络，失败后再返回缓存
  firstRequest,

  /// 先用缓存，在请求网络，得到网络数据后覆盖缓存，并且请求数据重新抛出去
  firstCacheRequest
}

class MyDioCachePolicy {
  /// 缓存策略
  final MyCachePolicy cachePolicy = MyCachePolicy.none;

  /// 过期时间 默认一年，其实就是永久的意思
  final DateTime expiry = DateTime(1);

  /// 磁盘存储最大内存 M
  int maxSize = 10;
}
