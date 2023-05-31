import 'package:flutter/material.dart';
import 'dart:math';

///随机色
Color randomColor() {
  return Color.fromARGB(255, Random().nextInt(256) + 0,
      Random().nextInt(256) + 0, Random().nextInt(256) + 0);
}

const red = Colors.red;
const green = Colors.green;
const blue = Colors.blue;
const black = Colors.black;
