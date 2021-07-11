import 'package:flutter/material.dart';
import 'package:foodmonkey/pages/Cart.dart';
import 'package:foodmonkey/pages/Flash.dart';
import 'package:foodmonkey/pages/Home.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Flash(),
        "/home": (context) => Home(),
        "/cart": (context) => Cart()
      },
      theme: ThemeData(fontFamily: 'English')));
}
