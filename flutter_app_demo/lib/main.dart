import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/provider_page/color_model.dart';
import 'package:flutter_app_demo/base/route/two_page.dart';
import 'package:flutter_app_demo/global/provider/global_provider.dart';
import 'package:flutter_app_demo/root_pages.dart';
import 'package:flutter_app_demo/thirdlib/router/router_page.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'base/provider_page/counter_model.dart';
import 'generated/l10n.dart';
import 'commonPages/unknown_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: ColorModel()),
      ChangeNotifierProvider.value(value: CounterModel()),
      ChangeNotifierProvider.value(value: LanPovider())
    ],
    child: MyAPP(),
  ));
}

class MyAPP extends StatefulWidget {
  const MyAPP({Key? key}) : super(key: key);
  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  /// 初始化sdk
  void initSDK(BuildContext context) {
    // 设置尺寸（填写设计中设备的屏幕尺寸）如果设计基于375, 667的屏幕
    ScreenUtil.init(context, designSize: Size(375, 667));
  }

  @override
  Widget build(BuildContext context) {
    // 初始化sdk
    initSDK(context);

    // 支持的国际化语言
    final List<Locale> _supportedLocales = [
      Locale('zh', 'CN'),
      Locale('en', 'EN'),
      ...S.delegate.supportedLocales
    ];
    // 国际化语言代理
    final List<LocalizationsDelegate> _LocalizationsDelegate = [
      S.delegate,
      GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
      GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
      GlobalWidgetsLocalizations.delegate // 指定默认的文本排列方向, 由左到右或由右到左
    ];

    // app主题
    final ThemeData _theme = ThemeData(
      highlightColor: Color.fromRGBO(1, 0, 0, 0.0),
      splashColor: Color.fromRGBO(1, 0, 0, 0.0),
      cardColor: Color.fromRGBO(1, 1, 1, 0.65),
      primarySwatch: Colors.yellow,
    );

    return Consumer<LanPovider>(builder: (context, currrentLocale, child) {
      Locale _locale = currrentLocale.getLocale();
      return MaterialApp.router(
        locale: _locale,
        // supportedLocales：指定要支持哪些国际化
        supportedLocales: _supportedLocales,
        // localizationsDelegates：指定哪些Widget需要进行国际化
        localizationsDelegates: _LocalizationsDelegate,
        theme: _theme,
        builder: EasyLoading.init(),
        routerConfig: router,
      );

      //   return MaterialApp(
      //     locale: _locale,
      //     // supportedLocales：指定要支持哪些国际化
      //     supportedLocales: _supportedLocales,
      //     // localizationsDelegates：指定哪些Widget需要进行国际化
      //     localizationsDelegates: _LocalizationsDelegate,
      //     theme: _theme,
      //     home: RootPage(),
      //     // 注册路由
      //     routes: {
      //       "two_page": (context) => TwoPage(),
      //     },
      //     // 错误路由处理，统一返回 UnknownPage
      //     onUnknownRoute: (RouteSettings setting) =>
      //         MaterialPageRoute(builder: (context) => UnknownPage()),
      //     builder: EasyLoading.init(),
      //   );
    });
  }
}
