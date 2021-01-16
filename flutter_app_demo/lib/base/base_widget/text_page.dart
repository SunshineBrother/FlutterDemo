import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('文本组件'),),
      body: _MyTextPage(),
    );
  }
}

class _MyTextPage extends StatelessWidget {
  Widget _text = Text(
    "Hello Flutter",
    textDirection: TextDirection.ltr,
    style: TextStyle(
        color: Colors.red,
        fontSize: 40.0,
        fontWeight: FontWeight.bold),
  );

  Widget _richText(BuildContext context){
    return RichText(text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children:<InlineSpan>[
          TextSpan(text: '登陆即视为同意'),
          TextSpan(
              text:'《xxx服务协议》',
              style: TextStyle(color: Colors.red),
              recognizer:TapGestureRecognizer()..onTap = () {

              }
          )
        ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: <Widget>[
        _text,
        _richText(context)
      ]
    ));
  }
}




