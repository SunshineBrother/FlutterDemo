import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewPage extends StatelessWidget {
  const StaggeredGridViewPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: const [
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Text("0", textAlign: TextAlign.center)),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Text("1", textAlign: TextAlign.center)),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Text("2", textAlign: TextAlign.center)),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Text("3", textAlign: TextAlign.center)),
        StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Text("4", textAlign: TextAlign.center)),
      ],
    ));
  }
}
