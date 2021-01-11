import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BaseDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('案例'),),
      body: Center(
        child: demoWidget(),
      ),
    );
  }
}


class demoWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topWidget(),
              starWidget(),
              iconWidget()],
          ),
      )
    );
  }
}

class topWidget extends StatelessWidget {
  final mainImage = Container(
    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
    child: Image.asset(
      'images/pavlova.jpg',
      fit: BoxFit.fill,
      width: 130,
      height: 130,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mainImage,
        Flexible(
            child: rightWidget()
        ),
      ],
    );
  }
}

class rightWidget extends StatelessWidget {
  final titleText = Container(
    padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
    child: Text(
      'Strawberry Pavlova',
      style: TextStyle(
        letterSpacing: 0.5,
        fontSize: 17,
      ),
    ),
  );

  final subTitle = Container(
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
          'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
          'topped with fruit and whipped cream.',
      style: TextStyle(
        fontSize: 12,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [titleText,subTitle],
      ),
    );
  }
}

class starWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.black),
          Icon(Icons.star, color: Colors.black),
        ],
      ),
    );
  }
}

class iconWidget extends StatelessWidget {

  final descTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 18,
    height: 1.2,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                Text('PREP:',style: descTextStyle),
                Text('25 min',style: descTextStyle),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                Text('COOK:',style: descTextStyle),
                Text('1 hr',style: descTextStyle),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                Text('FEEDS:',style: descTextStyle),
                Text('4-6',style: descTextStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




