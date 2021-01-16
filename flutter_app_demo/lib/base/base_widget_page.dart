import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/base_widget/widget_page.dart';
import 'package:flutter_app_demo/base/container_page/container_page.dart';

class BaseWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('基础'),),
      body: Center(
        child: BaseWidget(),
      ),
    );
  }
}

class BaseWidget extends StatefulWidget {
  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {

  List<String> _data = ['基础组件','布局组件'];
  List<Widget> _list = [WidgetPage(),ContainerPage()];
  Widget _itemBuilder(BuildContext context, int index){
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return _list[index];
        }));

      },
      child: Container(
        child: Card(
          color: Colors.white,
          child: Center(
            child: Text(_data[index],style:TextStyle(color: Colors.black,fontSize:18)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemExtent: 50.0, //强制高度为50.0
          itemCount: _data.length,
          itemBuilder: _itemBuilder
      ),
    );
  }
}



class _ListItem extends StatelessWidget {
  final String title;
  const _ListItem({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 45,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text('$title'),
      ),
    );
  }
}


