import 'package:flutter/material.dart';
import 'package:flutter_app_demo/const.dart';

class ChipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('标签'),),
      body: Container(
        child: Center(child: ChipWidget()),
      ),
    );
  }
}

class ChipWidget extends StatefulWidget {
  @override
  _ChipWidgetState createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15,
      children: List.generate(10, (index) {
        return ChoiceChip(
          label: Text('Chip $index'),
          selected: _selectIndex == index,
          selectedColor: red,
          onSelected: (v) {
            setState(() {
              _selectIndex = index;
            });
          },
        );
      }).toList(),
    );
  }
}






