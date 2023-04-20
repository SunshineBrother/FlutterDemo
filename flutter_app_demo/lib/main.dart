import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/base_widget_page.dart';
import 'package:flutter_app_demo/base/provider_page/color_model.dart';
import 'package:flutter_app_demo/base/route/two_page.dart';
import 'package:provider/provider.dart';
import 'base/provider_page/counter_model.dart';
import 'base/route/unknown_page.dart';
void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: ColorModel()),
          ChangeNotifierProvider.value(value: CounterModel())],
        child: MyApp(),
  ));
}
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
      // 注册路由
      routes: {
        "two_page":(context)=>TwoPage(),
      },
      // 错误路由处理，统一返回 UnknownPage
      onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknownPage()),
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
    BottomNavigationBarItem(label: '基础',icon: Icon(Icons.home)),
    BottomNavigationBarItem(label: '约束布局',icon: Icon(Icons.book))];

  final PageController _controller = PageController(initialPage: 0);
  List<Widget> _pages = [BaseWidgetPage(),BaseWidgetPage()];
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


