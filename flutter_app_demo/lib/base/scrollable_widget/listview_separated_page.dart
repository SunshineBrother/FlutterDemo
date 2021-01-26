import 'package:flutter/material.dart';
import 'cat_item.dart';
class ListViewSeparatedPage extends StatelessWidget {
  const ListViewSeparatedPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            return CatItem();
          },
          separatorBuilder: (BuildContext context, int index){
            return index%2==0?Divider(color: Colors.red):Divider(color: Colors.black);
          },
          itemCount: 100),
    );
  }
}
