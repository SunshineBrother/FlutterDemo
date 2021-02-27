import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


// 声明 MethodChannel
const platform = MethodChannel('flutter_postData');
class MethodChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Flutter混编原生功能'),),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Flutter向原生传值'),
              onPressed: () async{
                List result;
                try{
                  result = await platform.invokeMethod('flutter_postData',{"flutter":"flutter value"});
                }catch(e){
                  result = [];
                }
                print(result.toString());
              },
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: MyFlutterView(),
            )
          ],
        ),
      ),
    );
  }
}

class MyFlutterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用 Android 平台的 AndroidView，传入唯一标识符 MyFlutterView
    if (defaultTargetPlatform == TargetPlatform.android) {
      return AndroidView(viewType: 'MyFlutterView');
    } else {
      // 使用 iOS 平台的 UIKitView，传入唯一标识符 MyFlutterView
      return UiKitView(viewType: 'MyFlutterView');
    }
  }
}













