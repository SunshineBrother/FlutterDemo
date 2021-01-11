import 'package:flutter/material.dart';
class BaseSizeBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox'),),
      body: _sizeBox(),
    );
  }
}

class _sizeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30,),
        SizedBox(width: 200,height: 200,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 30,),
        SizedBox(width: 100,height: 100,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
