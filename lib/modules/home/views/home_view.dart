import 'package:flutter/material.dart';
import 'package:football_demo/widget/widget.dart';

class HomePage extends StatelessWidget {

  static const String routeName = '/home';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Text("Last week matches"),
      ),
    );
  }

}