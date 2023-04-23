import 'package:flutter/material.dart';
import 'package:flutter_app_demo/constant/const.dart';
import 'package:flutter_app_demo/base/scrollable_widget/cat_item.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListRefreshIndicatorPage extends StatefulWidget {
  const ListRefreshIndicatorPage({Key key}) : super(key: key);
  @override
  _ListRefreshIndicatorPageState createState() =>
      _ListRefreshIndicatorPageState();
}

class _ListRefreshIndicatorPageState extends State<ListRefreshIndicatorPage> {
  //是否正在加载中
  bool isLoading = false;
  //listview的控制器
  ScrollController _scrollController = ScrollController();
  //数据源
  List<String> data = new List<String>.generate(10, (int index) => "${index}");

  @override
  void initState() {
    super.initState();
    // 给列表滚动添加监听
    _scrollController.addListener(() {
      // 滑动到底部的关键判断
      if (!isLoading &&
          _scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent) {
        // 开始加载数据
        setState(() {
          isLoading = true;
          loadMoreData();
        });
      }
    });
  }

  ///加载更多
  Future loadMoreData() {
    return Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
        List<String> list =
            new List<String>.generate(10, (int index) => "${index}");
        data.addAll(list);
      });
    });
  }

  //下拉刷新
  Future onRefresh() {
    return Future.delayed(Duration(seconds: 1), () {
      Fluttertoast.showToast(msg: '当前已是最新数据');
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      color: red,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: data.length + 1,
        itemBuilder: (context, index) {
          if (index < data.length) {
            return Card(child: CatItem());
          } else {
            return renderBottom();
          }
        },
      ),
    );
  }

  Widget renderBottom() {
    if (this.isLoading) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '努力加载中...',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF333333),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 3),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: Text(
          '上拉加载更多',
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF333333),
          ),
        ),
      );
    }
  }
}
