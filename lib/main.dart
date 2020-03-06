import 'package:api_model_ex/home_screen.dart';
import 'package:api_model_ex/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: ProviderClass(),
        ),
      ],
      child: MaterialApp(
        title: "ApiModelExample",
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}