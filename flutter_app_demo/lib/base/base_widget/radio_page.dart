import 'package:flutter/material.dart';

class RadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('单选按钮Radio'),
      ),
      body: Container(
        child: Center(child: RadioWidget()),
      ),
    );
  }
}

class RadioWidget extends StatefulWidget {
  @override
  _RadioWidgetState createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  var _radioGroupValue = '语文';
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Flexible(
          child: RadioListTile(
            title: Text('语文'),
            value: '语文',
            activeColor: Colors.red,
            groupValue: _radioGroupValue,
            onChanged: (String? value) {
              setState(() {
                _radioGroupValue = value ?? "";
              });
            },
          ),
        ),
        Flexible(
            child: RadioListTile(
          title: Text('数学'),
          value: '数学',
          activeColor: Colors.red,
          groupValue: _radioGroupValue,
          onChanged: (String? value) {
            setState(() {
              _radioGroupValue = value ?? "";
            });
          },
        )),
        Flexible(
            child: RadioListTile(
          title: Text('英语'),
          value: '英语',
          activeColor: Colors.red,
          groupValue: _radioGroupValue,
          onChanged: (String? value) {
            setState(() {
              _radioGroupValue = value ?? "";
            });
          },
        )),
      ],
    ));
  }
}
