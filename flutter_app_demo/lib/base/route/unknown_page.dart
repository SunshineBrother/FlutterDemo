import 'package:flutter/material.dart';
class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('错误路由'),),
      body: Container(
        child: Text('错误路由处理',style: TextStyle(fontSize: 30,color: Colors.red),),
      ),

    );
  }
}
