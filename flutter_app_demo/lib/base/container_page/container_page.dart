import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/container_page/base_box_page.dart';
import 'package:flutter_app_demo/base/container_page/base_demo.dart';
import 'package:flutter_app_demo/base/container_page/box_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'base_aspectRatio_page.dart';
import 'base_boxDecoration_page.dart';
import 'base_container_page.dart';
import 'base_flex_page.dart';
import 'base_linearLayout_page.dart';
import 'base_sizeBox_page.dart';
import 'base_stack_page.dart';
import 'base_wrap_page.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  List<String> _data = [
    'Container',
    'Decoration(装饰器)',
    'SizedBox',
    '线性布局',
    '弹性布局Flex',
    '流式布局',
    '叠加布局',
    '宽高低',
    '基础约束布局',
    '深入理解约束布局',
    '案例'
  ];
  List<Widget> _list = [
    BaseContainerPage(),
    BoxDecorationPage(),
    BaseSizeBoxPage(),
    LinearLayoutPage(),
    BaseFlexPage(),
    BaseWrapWidget(),
    BaseStackPage(),
    AspectRatioPage(),
    BaseBoxPage(),
    BoxPage(),
    BaseDemoPage()
  ];
  Widget _itemBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return _list[index];
        }));
      },
      child: Container(
        color: Colors.red,
        height: 50,
        child: Center(
          child: Text(_data[index],
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('基础布局'),
        ),
        body: Container(
          child: MasonryGridView.count(
            crossAxisSpacing: 4,
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            primary: true,
            itemCount: _data.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true, //收缩，让元素宽度自适应
            itemBuilder: (BuildContext context, int index) {
              return _itemBuilder(context, index);
            },
          ),
        ));
  }
}
