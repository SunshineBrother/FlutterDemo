import 'package:flutter/material.dart';
class BaseFlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('弹性布局Flex'),),
      body: Center(
        child: _flexible1(),
      ),
    );
  }
}



class _flexible1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.blue,
          height: 50,
          width: 100,
        ),
        Flexible(
            child: Container(
              color: Colors.red,
              height: 50,
            )
        ),
        Container(
          color: Colors.blue,
          height: 50,
          width: 100,
        ),
      ],
    );
  }
}

class _flexible2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text('1 Flex/ 6 Total',style: TextStyle(color: Colors.white),),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: Text('2 Flex/ 6 Total',style: TextStyle(color: Colors.white),),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('3 Flex/ 6 Total',style: TextStyle(color: Colors.white),),
          ),
        ),
      ],
    );
  }
}

