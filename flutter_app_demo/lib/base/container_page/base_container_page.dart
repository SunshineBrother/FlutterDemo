import 'package:flutter/material.dart';
class BaseContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Decoration(装饰器)'),),
      body: Center(
        child: _containPage(),
      ),
    );
  }
}
class _containPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Hello Flutter", // 文字内容
        style: TextStyle(fontSize: 20.0,color: Colors.amber), // 字体样式 字体大小
      ),
      alignment: Alignment.topLeft, // 字内容的对齐方式 center居中，centerLeft居中左侧 centerRight居中右侧
      // bottomCenter 下居中对齐 ，bottomLeft 下左对齐，bottomRight 下右对齐
      // topCenter 上居中对齐，topLeft 上左对齐，topRight 上右对齐
      width: 200,   // 宽
      height: 200,  // 高
      color: Colors.red, //颜色   color和decoration不可以同时存在
      padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0), // 边距 all 包括上下左右  fromLTRB 上下左右分别设置边距fromLTRB(20.0,20.0,20.0,20.0)
      margin: const EdgeInsets.all(30.0), // 外间距
    );
  }
}
