import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/value/eventbusutil.dart';
class EventBusDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EventBusDemo'),),
      body: Center(
        child: EventBusPage(),
      ),
    );
  }
}


class EventBusPage extends StatefulWidget {
  @override
  _EventBusPageState createState() => _EventBusPageState();
}

class _EventBusPageState extends State<EventBusPage> {
  String msg = "通知：";
  @override
  void initState() {
    // TODO: implement initState
    bus.on("eventName", (arg) {
      print(arg);
      setState(() {
        msg += arg;
      });
    });
    super.initState();
  }
  dispose() {
    bus.off("eventName");//State销毁时，清理注册
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(msg),
          TextButton(
            child: Text('进入二级界面'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return EventBusTwoPage();
                }));
              })
        ],
      ),
    );
  }
}

class EventBusTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EventBusTwoPage"),),
      body: Center(
        child: TextButton(
          child: Text('二级界面'),
          onPressed: (){
            bus.emit("eventName","二级页面来通知了");
            Navigator.pop(context);
          },
        ),
      )
    );
  }
}


