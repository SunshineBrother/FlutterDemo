import 'package:flutter/material.dart';
import 'package:flutter_app_demo/pages/user/mine/mine_page.dart';
import 'base/base_widget_page.dart';
import 'generated/l10n.dart';

/// FileName root_pages.dart
///
/// @Author jiangjunhui
/// @Date 2023/5/22 17:09
///
/// @Description TODO
class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(label: S.current.tab_demo, icon: Icon(Icons.home)),
    BottomNavigationBarItem(
        label: S.current.personal_center, icon: Icon(Icons.info))
  ];
  final PageController _controller = PageController(initialPage: 0);
  List<Widget> _pages = [BaseWidgetPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        onTap: (int index) {
          setState(() {
            print("当前页:$index");
            _currentIndex = index;
          });
        },
        selectedFontSize: 12.0,
        currentIndex: _currentIndex,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
