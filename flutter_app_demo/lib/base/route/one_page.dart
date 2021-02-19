import 'package:flutter/material.dart';
import 'package:flutter_app_demo/base/route/two_page.dart';
class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('路由与导航'),),
      body: OnePage(),
    );
  }
}


class OnePage extends StatefulWidget {
  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  String _msg = "";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            RaisedButton(
                child: Text('push two screen',style: TextStyle(fontSize: 20),),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return TwoPage();
                  }));
                }
            ),
            SizedBox(height: 20),
            RaisedButton(
                child: Text('命名路由 push two screen',style: TextStyle(fontSize: 20),),
                onPressed:(){
                  Navigator.pushNamed(context, "two_page");
                }
            ),
            SizedBox(height: 20),
            RaisedButton(
                child: Text('错误路由处理 push UnknownPage',style: TextStyle(fontSize: 20),),
                onPressed:(){
                  Navigator.pushNamed(context, "abc");
                }
            ),
            SizedBox(height: 20),
            RaisedButton(
                child: Text('push two screen 传递参数',style: TextStyle(fontSize: 20),),
                onPressed:(){
                  Navigator.pushNamed(context, "two_page",arguments: "one")
                  .then((value) => {
                    this.setState(() {
                      _msg = value;
                    })
                  });
                }
            ),
            SizedBox(height: 20),
            Text("我是二级界面传递过来的参数: $_msg",style:TextStyle(color: Colors.red,fontSize: 20))
          ],
        )
    );
  }
}



 