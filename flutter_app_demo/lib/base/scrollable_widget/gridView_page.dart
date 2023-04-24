import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);
  _createGridViewItem(Color color) {
    return Container(
      height: 80,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 10),
      children: [
        _createGridViewItem(Colors.primaries[0]),
        _createGridViewItem(Colors.primaries[1]),
        _createGridViewItem(Colors.primaries[2]),
        _createGridViewItem(Colors.primaries[3]),
        _createGridViewItem(Colors.primaries[4]),
        _createGridViewItem(Colors.primaries[5]),
        _createGridViewItem(Colors.primaries[6]),
        _createGridViewItem(Colors.primaries[7]),
      ],
    ));
  }
}
