import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/base_widget/widget_page.dart';
import 'package:flutter_app_demo/base/container_page/container_page.dart';
import 'package:flutter_app_demo/base/event/event_page.dart';
import 'package:flutter_app_demo/base/event_queue_page/event_queue_page.dart';
import 'package:flutter_app_demo/base/method_channel_page/method_channel_page.dart';
import 'package:flutter_app_demo/base/provider_page/provider_page.dart';
import 'package:flutter_app_demo/base/route/one_page.dart';
import 'package:flutter_app_demo/base/scrollable_widget/scrollable_widget.dart';
import 'package:flutter_app_demo/base/test_third/test_third.dart';
import 'package:flutter_app_demo/base/value/value_page.dart';
import 'package:flutter_app_demo/base/widget_life_cycle/life_cycle_page.dart';

import '../generated/l10n.dart';

class BaseWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.base_widget),
      ),
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
  List<String> _data = [
    S.current.base_widget,
    S.current.layout_widget,
    S.current.interactive_event,
    S.current.scroll_widget,
    S.current.router_navigation,
    S.current.transfer_data,
    S.current.widget_life_cycle,
    S.current.future_asyn,
    S.current.future_native,
    S.current.future_provider,
    S.current.lid_test
  ];
  List<Widget> _list = [
    WidgetPage(),
    ContainerPage(),
    EventPage(),
    ScrollablePage(),
    RoutePage(),
    ValuePage(),
    LifeCyclePage(),
    EventQueuePage(),
    MethodChannelPage(),
    MyProviderPage(),
    TestThirdLidPage()
  ];
  Widget _itemBuilder(BuildContext context, int index) {
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
            child: Text(_data[index],
                style: TextStyle(color: Colors.black, fontSize: 18)),
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
          itemBuilder: _itemBuilder),
    );
  }
}
