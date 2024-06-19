// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:gridview/pages/biriyani.dart';
import 'package:gridview/pages/dishes.dart';
import 'package:gridview/pages/home.dart';
import 'package:gridview/pages/meals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        '/mealspage': (context) => Meals(),
        '/biriyani': (context) => Biriyani(),
        '/dishespage': (context) => Dishes(),
      },
    );
  }
}
