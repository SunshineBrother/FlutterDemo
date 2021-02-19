import 'package:flutter/material.dart';
class TwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 取出路由参数
    String msg = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('第二个界面'),),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
                child: Text('pop one screen',style: TextStyle(fontSize: 20)),
                onPressed:(){
                 return Navigator.pop(context,"two");
                }
            ),
            SizedBox(height: 20),
            Text("我是第一个界面传递过来的参数: $msg",style:TextStyle(color: Colors.red,fontSize: 20))
          ],
        )
      ),
    );
  }
}
