import 'package:flutter/material.dart';

class ListCardPage extends StatelessWidget {
  const ListCardPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              child: ListTile(
                leading: new Icon(Icons.keyboard),
                title: new Text("Flutter"),
                subtitle: new Text("ListTile学习"),
                trailing: new Icon(Icons.arrow_forward_ios),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                enabled: true,
                onTap: () => print("$index被点击了"),
                onLongPress: () => print("$index被长按了"),
              ),
            );
          }),
    );
  }
}
