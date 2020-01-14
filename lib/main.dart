import 'package:flutter/material.dart';
import 'package:football_demo/routes/routes.dart';
import 'package:football_demo/modules/home/views/home_view.dart';
import 'package:football_demo/modules/competitions/views/competitions_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        Routes.home: (context) => HomePage(),
        Routes.competitions: (context) => CompetitionsPage(),
      },
    );
  }
}