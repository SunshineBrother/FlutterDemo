import 'package:flutter/material.dart';
class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('滑块组件'),),
      body: Center(child: SliderWidget()),
    );
  }
}


class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('值：$_sliderValue'),
          SizedBox(height: 10),
          Slider(
            value: _sliderValue,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            onChanged: (v){
              setState(() {
                _sliderValue = v;
              });
            },
          )
        ],
      ),
    );
  }
}



