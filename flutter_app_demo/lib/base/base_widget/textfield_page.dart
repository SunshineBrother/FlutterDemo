import 'package:flutter/material.dart';
class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextField'),),
      body: TextFieldWidget(),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  Widget _textField1 = TextField();
  Widget _textField2 = TextField(obscureText: true);






  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _textField1,
          SizedBox(height: 10),
          _textField2
        ],
      ),
    );
  }
}




