import 'package:flutter/material.dart';

class BaseBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('基础约束布局'),),
      body: ConstrainedBoxWidget(),
    );
  }
}


class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      width: 300.0,
      height: 300.0,
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment.topLeft,
          child: new Container(
            color: Colors.red,
            child: new Text("FittedBox"),
          )
      ),
    );
  }
}


class FractionallySizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.blue,
      child: FractionallySizedBox(
        widthFactor: .8,
        heightFactor: .3,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}


class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(constraints:
    BoxConstraints(minHeight: 100,
        minWidth: 100,
        maxHeight: 150,
        maxWidth: 150),
      child: Container(
        width: 90,
        height: 200,
        color: Colors.red,
      ),
    );
  }
}
























