import 'package:flutter/material.dart';

import '../../widgets/app_navigation_bar_title.dart';

/// FileName goods_detail.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/22 18:01
///
/// @Description TODO
class GoodsDetails extends StatelessWidget {
  final String goodsId;
  const GoodsDetails({Key? key, required this.goodsId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppNavigationBarTitle(title: "购物车"),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
