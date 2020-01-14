import 'package:flutter/material.dart';
import 'package:football_demo/widget/widget.dart';
import 'home_widget.dart';
// import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    
    // var now = new DateTime.now();
    // var date = new DateFormat('yyyy-MM-dd').format(now);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: DrawerMenu(),
      body: ListView(
        children: <Widget>[
          HomeCard('ROM', 'AS Roma', '1', 'JUV', 'Juventus', '2'),
          HomeCard('LAZ', 'Lazio', '0', 'BOL', 'Bologna', '5'),
        ],
      )
    );
  }

}