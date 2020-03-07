import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class ProviderClass with ChangeNotifier{
  Map<String,dynamic> _response;

  Map get getResponse{
  return _response;
  }

  Future<void> getData() async{
    final url = 'http://tasaloh-001-site1.itempurl.com/api/Universities';
    final response = await http.get(url);
    Map<String,dynamic> result = jsonDecode(response.body);
    _response = result;
    notifyListeners();
    /*Map<String,dynamic> result = jsonDecode(response.body);
    String body = utf8.decode(response.bodyBytes);
    Welcome.fromJson(result);
    Welcome welcome = new Welcome();
    welcome.welcomeFromJson(body);
    print(welcome.statusCode);*/
  }

  void passDataToModel(){
    Welcome.fromJson(_response);
    Welcome welcome = new Welcome();
    print(welcome.statusCode);
    notifyListeners();
  }
}