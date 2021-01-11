import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/base_widgetPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "布局Demo",
      theme: ThemeData(
        highlightColor: Color.fromRGBO(1, 0, 0, 0.0),
        splashColor: Color.fromRGBO(1, 0, 0, 0.0),
        cardColor: Color.fromRGBO(1, 1, 1, 0.65),
        primarySwatch: Colors.yellow,
      ),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(title: Text('基础'),icon: Icon(Icons.home)),
    BottomNavigationBarItem(title: Text('约束布局'),icon: Icon(Icons.book))];

  final PageController _controller = PageController(initialPage: 0);
  List<Widget> _pages = [BaseWidgetPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        onTap: (int index){
          setState(() {
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


