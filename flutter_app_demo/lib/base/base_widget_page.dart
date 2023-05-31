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
import 'package:provider/provider.dart';
import '../generated/l10n.dart';
import '../global/provider/global_provider.dart';
import '../util/engine_util.dart';
import 'dialog/show_Dialog.dart';

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
  List<Widget> _list = [
    WidgetPage(),
    ShowDialogPage(),
    ContainerPage(),
    EventPage(),
    ScrollablePage(),
    RoutePage(),
    ValuePage(),
    LifeCyclePage(),
    EventQueuePage(),
    MethodChannelPage(),
    MyProviderPage(),
    TestThirdLidPage(),
    TestThirdLidPage()
  ];

  List<String> getData() {
    List<String> _data = [
      S.current.base_widget,
      S.current.show_dialog,
      S.current.layout_widget,
      S.current.interactive_event,
      S.current.scroll_widget,
      S.current.router_navigation,
      S.current.transfer_data,
      S.current.widget_life_cycle,
      S.current.future_asyn,
      S.current.future_native,
      S.current.future_provider,
      S.current.lid_test,
      S.current.switch_lan
    ];
    return _data;
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () async {
        List _data = getData();
        String text = _data[index];
        if (text == S.current.switch_lan) {
          // 切换语言
          final _provider = Provider.of<LanPovider>(context, listen: false);
          if (_provider.getLocale().languageCode == "zh") {
            // 当前语言是中文，切换英文
            _provider.setLocale(Locale('en', 'EN'));
            print("---------当前语言是中文，切换英文-------");
          } else {
            // 当前语言是英文，切换中文
            print("---------当前语言是英文，切换中文-------");
            _provider.setLocale(Locale('zh', 'CN'));
          }

          await EngineUtil().forceAppUpdate();
        } else {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return _list[index];
          }));
        }
      },
      child: Container(
        child: Card(
          color: Colors.white,
          child: Center(
            child: Text(getData()[index],
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
          itemCount: getData().length,
          itemBuilder: _itemBuilder),
    );
  }
}
