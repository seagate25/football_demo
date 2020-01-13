import 'package:flutter/material.dart';
import 'services/service.dart';
import 'models/competition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Api api;

  @override
  void initState() { 
    super.initState();
    api = Api();
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: api.getCompetitions(),
        builder: (BuildContext context, AsyncSnapshot<List<Competition>> snapshot) {
          if(snapshot.hasError) {
            return Center(
              child: Text(
                  "Something wrong with message: ${snapshot.error.toString()}"),
            );
          } else if(snapshot.connectionState == ConnectionState.done) {
            List<Competition> competitions = snapshot.data;
            return _buildListView(competitions);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget _buildListView(List<Competition> competitions) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Competitions"),
      ),
      body: ListView.builder(
        itemCount: competitions.length,
        itemBuilder: (context, index) {
          if (index.isOdd) return Divider();
          Competition competition = competitions[index];
          return ListTile(
            contentPadding: EdgeInsets.all(10.0),
            title: Text(competition.name),
            trailing: Icon(
              Icons.arrow_forward_ios
            ),
          );
        },
      ),
    );
  }
}