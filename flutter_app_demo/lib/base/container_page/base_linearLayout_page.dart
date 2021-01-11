import 'package:flutter/material.dart';
class LinearLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('线性布局'),),
      body: _LinearLayoutPage(),
    );
  }
}

class _LinearLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _AxisAlignmentWidget();
  }
}

class _rowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 50,
          width: 100,
          color: Colors.red,
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.green,
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.blue,
        ),
      ],
    );
  }
}


class _columnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          width: 100,
          color: Colors.red,
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.green,
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.blue,
        ),
      ],
    );
  }
}


class _AxisAlignmentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 150,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
