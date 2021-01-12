import 'package:flutter/material.dart';
class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('宽高低'),),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 2 / 1,
            child: Container(color: Colors.red,),
          ),
        ),
      ),
    );
  }
}

