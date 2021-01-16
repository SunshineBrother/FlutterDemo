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
  Widget _RaisedButton = RaisedButton(
    child: Text('RaisedButton'),
    onPressed: (){
    },
  );
  Widget _FlatButton = FlatButton(
    child: Text('Button'),
    color: Colors.blue,
    onPressed: () {},
  );
  Widget _OutlineButton = OutlineButton(
    borderSide: BorderSide(color: Colors.blue,width: 2),
    disabledBorderColor: Colors.black,
    highlightedBorderColor: Colors.red,
    child: Text('OutlineButton'),
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
          _RaisedButton,
          _FlatButton,
          _OutlineButton,
          _RawMaterialButton,
          _IconButton
        ],
      ),
    );
  }
}


