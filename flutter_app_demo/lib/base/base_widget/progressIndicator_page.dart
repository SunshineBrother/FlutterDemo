import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProgressIndicatorPage extends StatefulWidget {
  @override
  _ProgressIndicatorPageState createState() => _ProgressIndicatorPageState();
}

class _ProgressIndicatorPageState extends State<ProgressIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('进度条组件'),),
      body: Container(
        width: 300,
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            LinearProgressIndicator(
              value: 0.3,
              backgroundColor: Colors.greenAccent,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
            SizedBox(height: 50),
            CircularProgressIndicator(
              value: 0.3,
              backgroundColor: Colors.greenAccent,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
            SizedBox(height: 50),
            CupertinoActivityIndicator(
              radius: 10,
            )
          ],
        ),
      ),
    );
  }
}


