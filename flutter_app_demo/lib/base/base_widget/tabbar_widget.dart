import 'package:flutter/material.dart';
const TITLE = '标题标题标题标题标题标题标题';


class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TabBar组件'),),
      body: TabControllerDemo(),
    );
  }
}

class TabControllerDemo extends StatefulWidget {
  TabControllerDemo({Key key}) : super(key: key);

  _TabControllerDemoState createState() => _TabControllerDemoState();
}

class _TabControllerDemoState extends State<TabControllerDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    this._tabController = new TabController(vsync: this, length: 5);
    this._tabController.addListener(() {
      print(this._tabController.toString());
      print(this._tabController.index);
      print(this._tabController.length);
      print(this._tabController.previousIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: TabBar(
            //配置控制器
            isScrollable: true,
            indicatorColor: Color(0xffff0000),
            indicatorWeight: 3,
            labelColor: Colors.red,
            labelStyle: TextStyle(
              fontSize: 15.0,
            ),
            unselectedLabelColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              fontSize: 12.0,
            ),
            controller: this._tabController,
            tabs: <Widget>[
              Tab(text: '女装'),
              Tab(text: '男装'),
              Tab(text: '童装'),
              Tab(text: '夏装'),
              Tab(text: '冬装'),
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            ListViewContnet(),
            ListViewContnet(),
            ListViewContnet(),
            ListViewContnet(),
            ListViewContnet(),
          ],
        )
    );
  }
}

class ListViewContnet extends StatelessWidget {
  const ListViewContnet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
      ],
    );
  }
}


