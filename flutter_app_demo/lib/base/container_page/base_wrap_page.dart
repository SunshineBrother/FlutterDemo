import 'package:flutter/material.dart';
class BaseWrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('流式布局'),),
      body: wrapWidget(),
    );
  }
}

class wrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 10,
      children: List.generate(10, (i) {
        double w = 50.0 + 10 * i;
        return Container(
          color: Colors.primaries[i],
          height: 50,
          width: w,
          alignment: Alignment.center,
          child: Text('$i'),
        );
      }),
    );
  }
}

