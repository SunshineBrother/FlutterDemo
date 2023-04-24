import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/scrollable_widget/list_titleview_page.dart';
import 'package:flutter_app_demo/base/scrollable_widget/listview_page1.dart';
import 'package:flutter_app_demo/base/scrollable_widget/listview_separated_page.dart';
import 'package:flutter_app_demo/base/scrollable_widget/scrollController_page.dart';
import 'package:flutter_app_demo/base/scrollable_widget/singleChildScrollView_widget.dart';
import 'package:flutter_app_demo/base/scrollable_widget/staggered_grid_view_page.dart';
import '../../tabs.dart';
import 'gridView_page.dart';
import 'list_card_page.dart';
import 'list_refreshIndicator_page.dart';
import 'listview_build_page.dart';

const List<DemoTabViewModel> demos = [
  DemoTabViewModel(title: 'ScrollController', widget: ScrollControllerPage()),
  DemoTabViewModel(
      title: 'SingleChildScrollView', widget: SingleChildScrollViewPage()),
  DemoTabViewModel(title: "默认构造函数", widget: ListViewPage1()),
  DemoTabViewModel(title: "ListView.builder", widget: ListViewBuilderPage()),
  DemoTabViewModel(
      title: "ListView.separated", widget: ListViewSeparatedPage()),
  DemoTabViewModel(title: "ListTile", widget: ListTitlePage()),
  DemoTabViewModel(title: "Card", widget: ListCardPage()),
  DemoTabViewModel(title: "刷新", widget: ListRefreshIndicatorPage()),
  DemoTabViewModel(title: "GridView", widget: GridViewPage()),
  DemoTabViewModel(title: "StaggeredGridView", widget: StaggeredGridViewPage()),
];

class ScrollablePage extends StatefulWidget {
  @override
  _ScrollablePageState createState() => _ScrollablePageState();
}

class _ScrollablePageState extends State<ScrollablePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    this.tabController = TabController(length: demos.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    this.tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DemoTabs(
      title: '滚动组件',
      demos: demos,
      tabController: this.tabController,
    );
  }
}
