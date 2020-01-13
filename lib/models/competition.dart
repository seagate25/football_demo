import 'dart:convert';

class Competition {
  int id;
  String name;
  String code;
  String emblemUrl;

  Competition({
    this.id,
    this.name,
    this.code,
    this.emblemUrl
  });

  factory Competition.fromJson(Map<String, dynamic> map) {
    return Competition(
      id: map["id"],
      name: map["name"],
      code: map["code"],
      emblemUrl: map["emblemUrl"]
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "code" : code,
      "emblemUrl": emblemUrl
    };
  }

  @override
  String toString() {
    return 'Competition{id: $id, name:$name, code: $code, emblemUrl: $emblemUrl}';
  }
}

List<Competition> competitionFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Competition>.from(data['competitions'].map((item) => Competition.fromJson(item)));
}

String competitionToJson(Competition data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}