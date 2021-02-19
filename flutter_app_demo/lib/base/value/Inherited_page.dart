import 'package:flutter/material.dart';
class MyInheritedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InheritedDemo'),),
      body: InheritedDemo(),
    );
  }
}

class MyData extends InheritedWidget {
  MyData({this.data, Widget child}) : super(child: child);

  final int data; //需要在子树中共享的数据，保存点击次数

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static MyData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyData>();
  }

  //该回调决定当data发生变化时，是否通知子树中依赖data的Widget
  @override
  bool updateShouldNotify(MyData old) {
    //如果返回true，则子树中依赖(build函数中有调用)本widget
    //的子widget的`state.didChangeDependencies`会被调用
    return old.data != data;
  }
}

class InheritedDemo extends StatefulWidget {
  @override
  _InheritedDemoState createState() => _InheritedDemoState();
}

class _InheritedDemoState extends State<InheritedDemo> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MyData(
        data: count,
        child: Column(
          children: <Widget>[
            Test1(),
            RaisedButton(
              child: Text('我是按钮'),
              onPressed: () => setState(() {
                count++;
              }),
            )
          ],
        ));
  }
}

class Test1 extends StatelessWidget {
//  final count;
//  Test1(this.count);
  @override
  Widget build(BuildContext context) {
    return Test2();
  }
}

class Test2 extends StatelessWidget {
//  final count;
//  Test2(this.count);
  @override
  Widget build(BuildContext context) {
    return Test3();
  }
}

class Test3 extends StatefulWidget {
//  final count;
//  Test3(this.count);
  @override
  _Test3State createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  @override
  Widget build(BuildContext context) {
    return Text(MyData.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies来了!");
    super.didChangeDependencies();
  }
}