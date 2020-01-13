import 'package:http/http.dart' show Client;
import 'package:football_demo/models/competition.dart';

class Api {
  final String baseUrl = "http://api.football-data.org/v2/";
  Client client = Client();

  Future<List<Competition>> getCompetitions() async {
    final response = await client.get("$baseUrl/competitions");
    if(response.statusCode == 200) {
      return competitionFromJson(response.body);
    } else {
      return null;
    }
  }
}