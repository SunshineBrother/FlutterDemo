import 'package:flutter/material.dart';

import '../../../widgets/app_navigation_bar_title.dart';

/// FileName shopping_cart.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/22 17:59
///
/// @Description TODO
class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppNavigationBarTitle(title: "商品详情"),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
