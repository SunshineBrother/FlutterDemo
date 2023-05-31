import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/provider_page/color_model.dart';
import 'package:flutter_app_demo/base/provider_page/counter_model.dart';
import 'package:flutter_app_demo/base/provider_page/provider_selector.dart';
import 'package:flutter_app_demo/global/constant/color_const.dart';
import 'package:provider/provider.dart';

class MyProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter 状态管理(Provider)'),
        ),
        // 通过 Provider 组件封装数据资源
        body: FirstProviderPage());
  }
}

class FirstProviderPage extends StatefulWidget {
  @override
  _FirstProviderPageState createState() => _FirstProviderPageState();
}

class _FirstProviderPageState extends State<FirstProviderPage> {
  @override
  Widget build(BuildContext context) {
    // 取出资源
    final _counter = Provider.of<CounterModel>(context);
    return Container(
      child: Column(
        children: [
          // 展示资源中的数据
          Text('Counter: ${_counter.counter}'),
          // 用资源更新方法来设置按钮点击回调
          TextButton(
              child: Text('进入二级界面'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondProviderPage()));
              }),
          TextButton(
              child: Text('selector'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GoodsProviderPage()));
              })
        ],
      ),
    );
  }
}

class SecondProviderPage extends StatefulWidget {
  @override
  _SecondProviderPageState createState() => _SecondProviderPageState();
}

class _SecondProviderPageState extends State<SecondProviderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SecondProviderPage'),
        ),
        body: Column(children: [
          // 使用 Consumer 来封装 counter 的读取
          Consumer2<CounterModel, ColorModel>(
              //builder 函数可以直接获取到 counter 参数
              builder: (context, CounterModel count, ColorModel colormodel, _) {
            return Text(
              'Counter: ${count.counter}',
              style: TextStyle(color: colormodel.color),
            );
          }),

          // 使用 Consumer 来封装 increment 的读取
          Consumer2<CounterModel, ColorModel>(
              //builder 函数可以直接获取到 increment 参数
              builder: (context, CounterModel counter, ColorModel colormodel,
                      child) =>
                  TextButton(
                      onPressed: () {
                        counter.increment();
                        colormodel.randomColor();
                      },
                      child: Icon(Icons.add))),
          TestView(),
        ]));
  }
}

class TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('print TestView build');
    return Container(width: 100, height: 100, color: red);
  }
}
