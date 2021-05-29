import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    // final  Map<String, Object> rcvdData = ModalRoute.of(context).settings.arguments;
    // print("rcvd fdata ${rcvdData['name']}");
    // print("rcvd fdata ${rcvdData}");

    return Scaffold(appBar: AppBar(title: Text("Second")),
      body: Container(child: Column(children: <Widget>[
        Text("Second"),
      ],),),);
  }
}
