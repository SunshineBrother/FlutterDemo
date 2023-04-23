import 'package:flutter/material.dart';
import '../../constant/const.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  const SingleChildScrollViewPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) {
            return Container(
              height: 100,
              color: randomColor(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
