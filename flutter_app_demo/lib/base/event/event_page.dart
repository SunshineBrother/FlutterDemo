import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/global/constant/color_const.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('交互事件'),
      ),
      body: Center(
        child: TestTapGestureRecognizer(),
      ),
    );
  }
}

class PointEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Listener(
        child: Container(
          color: Colors.red, // 背景色红色
          width: 300,
          height: 300,
        ),
        onPointerDown: (PointerDownEvent event) {
          // 手势按下回调
          print("down $event");
        },
        onPointerMove: (PointerMoveEvent event) {
          // 手势移动回调
          print("move $event");
        },
        onPointerUp: (PointerUpEvent event) {
          // 手势抬起回调
          print("up $event");
        },
      ),
    );
  }
}

class TestOpaque extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: red,
      child: Listener(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(300.0, 150.0)),
            child: Center(child: Text("Box A")),
          ),
          // behavior: HitTestBehavior.opaque,
          onPointerDown: (event) => print("down A")),
    );
  }
}

class TestTranslucent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Listener(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(300.0, 200.0)),
            child: DecoratedBox(decoration: BoxDecoration(color: Colors.blue)),
          ),
          onPointerDown: (event) => print("down0"),
        ),
        Listener(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(200.0, 100.0)),
            child: Center(child: Text("左上角200*100范围内非文本区域点击")),
          ),
          onPointerDown: (event) => print("down1"),
          // behavior: HitTestBehavior.translucent, //放开此行注释后可以"点透"
        )
      ],
    );
  }
}

class IgnoreWidget extends StatefulWidget {
  @override
  _IgnoreWidget createState() => new _IgnoreWidget();
}

class _IgnoreWidget extends State<IgnoreWidget> {
  bool _ignore = true;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Switch(
            value: _ignore,
            onChanged: (value) {
              setState(() {
                _ignore = value;
              });
            }),
        GestureDetector(
          onTap: () => print("GestureDetector Clicked"),
          child: IgnorePointer(
            ignoring: _ignore,
            child: TextButton(
              onPressed: () => print("IgnorePointer clicked"),
              child: Text("IgnorePointer"),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => print("GestureDetector Clicked"),
          child: AbsorbPointer(
            absorbing: _ignore,
            child: TextButton(
              onPressed: () => print("AbsorbPointer clicked"),
              child: Text("AbsorbPointer"),
            ),
          ),
        )
      ],
    ));
  }
}

class GestureDetectorWidget extends StatefulWidget {
  @override
  _GestureDetectorWidgetState createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  // 红色 container 坐标
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            // 手势识别
            child: Container(color: Colors.red, width: 50, height: 50), // 红色子视图
            onTap: () => print("Tap"), // 点击回调
            onDoubleTap: () => print("Double Tap"), // 双击回调
            onLongPress: () => print("Long Press"), // 长按回调
            //手指按下时会触发此回调
            onPanDown: (DragDownDetails e) {
              //打印手指按下的位置(相对于屏幕)
              print("用户手指按下：${e.globalPosition}");
            },
            //手指滑动时会触发此回调
            onPanUpdate: (DragUpdateDetails e) {
              //用户手指滑动时，更新偏移，重新构建
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e) {
              //打印滑动结束时在x、y轴上的速度
              print(e.velocity);
            },
          ),
        )
      ],
    );
  }
}

class GestureRecognizerStatus extends StatefulWidget {
  @override
  _GestureRecognizerStatusState createState() =>
      _GestureRecognizerStatusState();
}

class _GestureRecognizerStatusState extends State<GestureRecognizerStatus> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false; //变色开关

  @override
  void dispose() {
    //用到GestureRecognizer的话一定要调用其dispose方法释放资源
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text.rich(TextSpan(children: [
        TextSpan(text: "Hello Flutter "),
        TextSpan(
          text: "点我有变化",
          style: TextStyle(fontSize: _toggle ? 15.0 : 20.0, color: Colors.red),
          recognizer: _tapGestureRecognizer
            ..onTap = () {
              setState(() {
                _toggle = !_toggle;
              });
            },
        ),
      ])),
    );
  }
}

class TestTapGestureRecognizer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawGestureDetector(
      // 自己构造父 Widget 的手势识别映射关系
      gestures: {
        // 建立多手势识别器与手势识别工厂类的映射关系，从而返回可以响应该手势的 recognizer
        MultipleTapGestureRecognizer:
            GestureRecognizerFactoryWithHandlers<MultipleTapGestureRecognizer>(
          () => MultipleTapGestureRecognizer(),
          (MultipleTapGestureRecognizer instance) {
            instance.onTap = () => print('parent tapped '); // 点击回调
          },
        )
      },
      child: Container(
        color: Colors.pinkAccent,
        child: Center(
          child: GestureDetector(
            // 子视图可以继续使用 GestureDetector
            onTap: () => print('Child tapped'),
            child: Container(
                color: Colors.blueAccent, width: 200.0, height: 200.0),
          ),
        ),
      ),
    );
  }
}

class MultipleTapGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}
