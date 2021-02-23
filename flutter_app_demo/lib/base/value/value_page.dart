import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/value/Inherited_page.dart';
import 'eventbus_page.dart';
import 'notification_page.dart';
class ValuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('跨组件传递数据'),),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            RaisedButton(
              child: Text('InheritedDemo'),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return MyInheritedPage();
                  }));
                }
            ),
            SizedBox(height: 30),
            RaisedButton(
                child: Text('NotificationDemo'),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return NotificationPage();
                  }));
                }
            ),
            SizedBox(height: 30),
            RaisedButton(
                child: Text('EventBusDemoPage'),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return EventBusDemoPage();
                  }));
                }
            )
          ],
        ),
      ),
    );
  }
}




