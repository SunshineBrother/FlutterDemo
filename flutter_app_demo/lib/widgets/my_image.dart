import 'package:flutter/material.dart';

/// FileName my_image.dart
///
/// @Author jiangjunhui
/// @Date 2023/6/1 10:25
///
/// @Description TODO
class MyImage extends StatelessWidget {
  /// 图片路径
  final String imageUrl;

  /// 图片高度
  final double? imageHeight;

  /// 图片宽度
  final double? imageWidth;

  ///图片的缩放模式
  final BoxFit? fit;
  const MyImage(
      {Key? key,
      required this.imageUrl,
      this.imageHeight,
      this.imageWidth,
      this.fit})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
      imageUrl,
      width: imageWidth,
      height: imageHeight,
      fit: fit ?? BoxFit.cover,
    ));
  }
}
