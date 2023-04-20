import 'package:flutter/material.dart';
class BaseStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('叠加布局'),),
      body: IndexedStackDemo(),
    );
  }
}
class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          width: 300,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
        )
      ],
    );
  }
}

class IndexedStackDemo extends StatefulWidget {
  @override
  _IndexedStackDemoState createState() => _IndexedStackDemoState();
}

class _IndexedStackDemoState extends State<IndexedStackDemo> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 50,),
        _buildIndexedStack(),
        SizedBox(height: 30,),
        _buildRow(),
      ],
    );
  }

  _buildIndexedStack() {
    return IndexedStack(
      index: _index,
      children: <Widget>[
        Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text('1'),
          ),
        ),
        Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('2'),
          ),
        ),
        Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Text('3'),
          ),
        ),
      ],
    );
  }

  _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
          child: Text('1'),
          onPressed: (){
            setState(() {
              _index = 0;
            });
          },
        ),
        TextButton(
          child: Text('2'),
          onPressed: (){
            setState(() {
              _index = 1;
            });
          },
        ),
        TextButton(
          child: Text('3'),
          onPressed: (){
            setState(() {
              _index = 2;
            });
          },
        ),
      ],
    );
  }
}
