import 'package:flutter/material.dart';
import 'package:nagivation/screen/home_screen.dart';
import 'package:nagivation/screen/route_one_screen.dart';
import 'package:nagivation/screen/route_three_screen.dart';
import 'package:nagivation/screen/route_two_screen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes:{
        '/' : (context) => HomeScreen(),
        '/one' : (context) => RouteOneScreen(),
        '/two' : (context) => RouteTwoScreen(),
        '/three': (context) => RouteThreeScreen(),
      },
      // home: HomeScreen(),
    ),
  );
}
