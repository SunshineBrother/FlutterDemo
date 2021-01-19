import 'package:flutter/material.dart';
class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  var _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('开关组件'),),
      body: Container(
        margin: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Switch(
                value: _switchValue,
                activeColor: Colors.red,
                activeTrackColor: Colors.blue,
                activeThumbImage: AssetImage('images/icon1.png',),
                onChanged: (value){
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
              Transform.scale(
                scale: 2.0,
                child: Switch(
                    value: _switchValue,
                    onChanged: (bool) {

                    }),
              )
            ],
          ),
      ),
    );
  }
}


