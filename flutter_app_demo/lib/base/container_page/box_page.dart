import 'package:flutter/material.dart';

import '../../const.dart';

class BoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('深入理解约束布局'),),
      body: _BoxWidget(),
    );
  }
}
 
class _BoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      child: FittedBox(
        child: Container(
          alignment: Alignment.center,
          width: 400,
          height: 600,
          child: Expanded(
              child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      width: double.infinity, height: double.infinity),
                  child:  Demo1())),
        ),
      ),
    );
  }
}



class Demo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}

