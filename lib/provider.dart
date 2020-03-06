import 'dart:convert';

import 'package:api_model_ex/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ProviderClass with ChangeNotifier{

  Future<void> getData() async{
    final url = 'http://tasaloh-001-site1.itempurl.com/api/Universities';
    final response = await http.get(url);
    Map<String,dynamic> result = jsonDecode(response.body);
    String body = utf8.decode(response.bodyBytes);
    Welcome.fromJson(result);
    Welcome welcome = new Welcome();
    welcome.welcomeFromJson(body);
    print(welcome.statusCode);
  }
}