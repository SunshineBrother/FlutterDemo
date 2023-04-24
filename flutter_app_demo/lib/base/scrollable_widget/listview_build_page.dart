import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/scrollable_widget/cat_item.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 100,
          itemExtent: 100.0, //强制高度为100.0
          itemBuilder: (BuildContext context, int index) {
            return CatItem();
          }),
    );
  }
}
