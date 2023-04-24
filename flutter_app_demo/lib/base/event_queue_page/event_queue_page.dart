import 'dart:ffi';

import 'package:flutter/material.dart';

class EventQueuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future(() {
      print("default fauture");
    });

    Future.microtask(() {
      print("microtask future");
    });

    Future.forEach({1, 2, 3}, (int? num) {
      int seconds = num ?? 1;
      return Future.delayed(Duration(seconds: seconds), () {
        print(num);
      });
    });

    var future = Future.value(1);
    var future1 = Future.value('1');
    print(future);
    print(future1);
    Future(() => print('Running in Future 1')); // 下一个事件循环输出字符串

    Future(() => print('Running in Future 2'))
        .then((_) => print('and then 1'))
        .then((_) => print('and then 2'));

    return Scaffold(
      appBar: AppBar(
        title: Text('Future异步详解'),
      ),
      body: Container(),
    );
  }
}
