import 'package:flutter/material.dart';

class ListViewPage1 extends StatelessWidget {
  const ListViewPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(20.0),
        shrinkWrap: true,
        children: [
          Text("默认构造函数"),
          Text("默认构造函数"),
          Text("默认构造函数"),
          Text("默认构造函数"),
        ],
      ),
    );
  }
}
