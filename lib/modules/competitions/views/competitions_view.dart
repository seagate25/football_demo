import 'package:flutter/material.dart';
import 'package:football_demo/widget/widget.dart';

class CompetitionsPage extends StatelessWidget {

  static const String routeName = '/competitions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Competitions'),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Text("List of Competitions"),
      ),
    );
  }
}