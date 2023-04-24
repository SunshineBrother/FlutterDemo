import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// FileName cache_image.dart
///
/// @Author jiangjunhui
/// @Date 2023/4/24 10:29
///
/// @Description 图片缓存
class CaCheImageWidget extends StatelessWidget {
  /// 图片路径
  final String imageUrl;

  /// 图片高度
  final double? imageHeight;

  /// 图片宽度
  final double? imageWidth;

  ///图片的缩放模式
  final BoxFit? fit;

  /// 占位图
  final Widget? placeholder;

  const CaCheImageWidget(
      {Key? key,
      required this.imageUrl,
      this.imageHeight,
      this.imageWidth,
      this.fit,
      this.placeholder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 网络加载
    Widget _networkImage() {
      return CachedNetworkImage(
          imageUrl: imageUrl,
          width: imageWidth ?? double.infinity,
          height: imageHeight,
          fit: fit ?? BoxFit.cover,
          placeholder: (
            BuildContext context,
            String url,
          ) {
            return placeholder ?? Container();
          });
    }

    /// 加载本地图片
    Widget _assetImage() {
      return Image.asset(
        imageUrl,
        width: imageWidth,
        height: imageHeight,
        fit: fit ?? BoxFit.cover,
      );
    }

    /// flutter加载图片
    Widget _flutterLoadImage() {
      bool isNetUrl = this.imageUrl.contains("http");
      return isNetUrl ? _networkImage() : _assetImage();
    }

    return Container(child: _flutterLoadImage());
  }
}
