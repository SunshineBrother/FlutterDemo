import 'package:flutter/material.dart';
class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button'),),
      body: Container(
        child: Center(child: ButtonWidget()),
      ),
    );
  }
}


class ButtonWidget extends StatelessWidget {
  Widget _TextButton = TextButton(
    child: Text('TextButton'),
    onPressed: (){
    },
  );
  Widget _FlatButton = TextButton(
    child: Text('Button'),

    onPressed: () {},
  );
  Widget _RawMaterialButton = RawMaterialButton(
    onPressed: (){},
    fillColor: Colors.blue,
    child: Text('RawMaterialButton'),
  );
  Widget _IconButton = IconButton(
    tooltip: '长按显示图标',
    icon: Icon(Icons.person),
    iconSize: 30,
    color: Colors.red,
    onPressed: () {},
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _TextButton,
          _FlatButton,
          _RawMaterialButton,
          _IconButton
        ],
      ),
    );
  }
}


