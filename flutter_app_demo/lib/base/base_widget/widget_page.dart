import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/base_widget/button_page.dart';
import 'package:flutter_app_demo/base/base_widget/chip_page.dart';
import 'package:flutter_app_demo/base/base_widget/progressIndicator_page.dart';
import 'package:flutter_app_demo/base/base_widget/radio_page.dart';
import 'package:flutter_app_demo/base/base_widget/shape_page.dart';
import 'package:flutter_app_demo/base/base_widget/slider_page.dart';
import 'package:flutter_app_demo/base/base_widget/switch_page.dart';
import 'package:flutter_app_demo/base/base_widget/text_page.dart';
import 'package:flutter_app_demo/base/base_widget/textfield_page.dart';
class WidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("基础组件"),),
      body: MyWdigetPage(),
    );
  }
}


class MyWdigetPage extends StatefulWidget {
  @override
  _MyWdigetPageState createState() => _MyWdigetPageState();
}

class _MyWdigetPageState extends State<MyWdigetPage> {

  List<String> _data = ['文本组件Text',
    '输入组件TextField',
    '按钮组件Button',
    '单选按钮Radio',
    '滑块组件Slider',
    '开关组件',
    '进度条组件',
    '边框组件',
    '标签'];
  List<Widget> _list = [
    MyTextPage(),
    TextFieldPage(),
    ButtonPage(),
    RadioPage(),
    SliderPage(),
    SwitchPage(),
    ProgressIndicatorPage(),
    ShapePage(),
    ChipPage()];

  Widget _itemBuilder(BuildContext context, int index){
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return _list[index];
        }));

      },
      child: Card(
        child: Container(
          height: 45,
          child: Center(
            child: Text(_data[index],style:TextStyle(color: Colors.white,fontSize:18)),
          ),
        ),
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index){
            return _itemBuilder(context, index);
          },

      ),
    );
  }
}







