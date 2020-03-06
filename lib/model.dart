// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';


String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  int statusCode;
  String message;
  bool isError;
  List<Result> result;

  Welcome({
    this.statusCode,
    this.message,
    this.isError,
    this.result,
  });

  Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    statusCode: json["statusCode"],
    message: json["message"],
    isError: json["isError"],
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "isError": isError,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Result {
  int universityId;
  String name;

  Result({
    this.universityId,
    this.name,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    universityId: json["university_Id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "university_Id": universityId,
    "name": name,
  };
}
