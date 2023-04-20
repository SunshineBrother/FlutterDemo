import 'package:flutter/material.dart';
class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NotificationDemo'),),
      body: parentNotificationWidget(),
    );
  }
}

class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}

//子widget
class ChildNotificationWidget extends StatefulWidget {
  @override
  _ChildNotificationWidgetState createState() => _ChildNotificationWidgetState();
}

class _ChildNotificationWidgetState extends State<ChildNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      // 按钮点击时分发通知
      onPressed: () => MyNotification("你好，Flutter").dispatch(context),
      child: Text("Fire Notification"),
    );
  }
}

//父widget
class parentNotificationWidget extends StatefulWidget {
  @override
  _parentNotificationWidgetState createState() => _parentNotificationWidgetState();
}

class _parentNotificationWidgetState extends State<parentNotificationWidget> {
  String _msg = " 通知：";
  @override
  Widget build(BuildContext context) {
    // 监听通知
    return NotificationListener<MyNotification>(
        onNotification: (notification) {
          setState(() {_msg += notification.msg+"  ";});// 收到子 Widget 通知，更新 msg
        },
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_msg),
            ChildNotificationWidget()],// 将子 Widget 加入到视图树中
        )
    );
  }
}









