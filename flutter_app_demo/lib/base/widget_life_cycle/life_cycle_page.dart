import 'package:flutter/material.dart';
import '../../const.dart';

class LifeCyclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget生命周期&渲染原理'),),
      body: Container(
        child: Text('Widget生命周期&渲染原理'),
      ),
    );
  }
}



class MyStatelessWidget extends StatelessWidget {
  final String title;
  MyStatelessWidget({this.title}){
    print('构造函数被调用了!');
  }
  @override
  Widget build(BuildContext context) {
    print('build方法被调用了!');
    return Container();
  }
}

class MyStatefulWidget extends StatefulWidget {
  final String title;
  MyStatefulWidget({this.title}){
    print('构造函数被调用了!');
  }
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;
  List<Widget> items = [
    StfulItem(
      'aaaaa',
    ),
    StfulItem(
      'bbbbb',
    ),
    StfulItem(
      'ccccc',
    ),
  ];

  _MyStatefulWidgetState() {
    print('State构造方法来了!');
  }
  @override
  void initState() {
    print('State的init来了!');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print('build方法被调用了!');
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: () {
            _count++;
            setState(() {});
          },
        ),
        Text('$_count'),
        RaisedButton(
          child: Text('移除'),
          onPressed: () {
            setState(() {
              items.removeAt(0);
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items,
        )
      ],
    );
  }
  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyStatefulWidget oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  //当State对象从渲染树中移出的时候,就会调用!即将销毁!
  @override
  void deactivate() {
    super.deactivate();
  }
  //当Widget销毁的时候， 调用State的dispose
  @override
  void dispose() {
    print('State的dispose');
    super.dispose();
  }
}


class StfulItem extends StatefulWidget {
  final title;
  StfulItem(this.title, {Key key}) : super(key: key);
  @override
  _StfulItemState createState() => _StfulItemState();
}

class _StfulItemState extends State<StfulItem> {
  @override
  void didUpdateWidget(covariant StfulItem oldWidget) {
    // TODO: implement didUpdateWidget
    print('子widget要didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: randomColor(),
      child: Text(widget.title),
    );
  }
}
















