import 'package:flutter/material.dart';
import 'package:flutter_app_demo/const.dart';
class ShapePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('边框组件')),
      body: Center(
        child: ShapeWidget(),
      ),
    );
  }
}

class ShapeWidget extends StatelessWidget {
  Widget _RaisedButton = RaisedButton(
      shape: Border(
          top: BorderSide(color: Colors.red,width: 2)
      ),
      child: Text('Border'),
      onPressed: (){});

  Widget _CircleBorder = Container(
    width: 100,
    height: 100,
    child: RaisedButton(
      shape: CircleBorder(
          side:BorderSide(color: Colors.red)
      ),
      child: Text('Border',),
    ),
  );

  Widget _ContinuousRectangleBorder = Container(
    width: 300,
    height: 100,
    child: RaisedButton(
      shape: ContinuousRectangleBorder(
          side: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20)),
      child: Text('ContinuousRectangleBorder',),
    ),
  );

  Widget _RoundedRectangleBorder = Container(
    width: 300,
    height: 100,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.red,width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Text('RoundedRectangleBorder',),
    ),
  );

  Widget _StadiumBorder = Container(
    width: 200,
    height: 50,
    child: RaisedButton(
      shape: StadiumBorder(),
      child: Text('RaisedButton'),
    ),
  );

  Widget _ClipRect = ClipRect(
    child: Align(
      alignment: Alignment.topCenter,
      heightFactor: 0.5,
      child: Container(
        height: 150,
        width: 150,
        child: Image.asset(
          'images/cat.png',
          fit: BoxFit.cover,
        ),
      ),
    ),
  );

  Widget _ClipRRect = ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: Container(
      height: 150,
      width: 150,
      color: red,
      child: Image.asset(
        'images/cat.png',
        fit: BoxFit.cover,
      ),
    ),
  );
  Widget _ClipPath = ClipPath.shape(
    shape: StadiumBorder(),
    child: Container(
      height: 250,
      width: 250,
      color: red,
      child: Image.asset(
        'images/cat.png',
        fit: BoxFit.cover,
      ),
    ),
  );


  Widget _TrianglePath = Container(
    child: ClipPath(
      clipper: TrianglePath(),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(30),
      child: ListView(
        children: [
          _RaisedButton,
          SizedBox(height: 10),
          _CircleBorder,
          SizedBox(height: 10),
          _ContinuousRectangleBorder,
          SizedBox(height: 10),
          _RoundedRectangleBorder,
          SizedBox(height: 10),
          _StadiumBorder,
          SizedBox(height: 10),
          _ClipRect,
          SizedBox(height: 10),
          _ClipRRect,
          SizedBox(height: 10),
          _ClipPath,
          SizedBox(height: 10),
          _TrianglePath

        ],
      ),
    );
  }
}


class TrianglePath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width/2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
