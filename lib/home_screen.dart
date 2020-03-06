import 'package:api_model_ex/next_page_screen.dart';
import 'package:api_model_ex/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<ProviderClass>(context).getData();
    return Scaffold(
      appBar: AppBar(
        title: Text('Messi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Container(
            padding: EdgeInsets.all(10),
            height: 100,
            child: Card(
              child: new InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NextPageScreen()),);
                },
                child: Container(
                  width: 150.0,
                  height: 100.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Messi[$position]'),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: 10,
      )
    );
  }
}
