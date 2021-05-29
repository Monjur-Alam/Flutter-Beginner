import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map mapData = {};

  @override
  Widget build(BuildContext context) {

    mapData = {"dataKey":ModalRoute.of(context)!.settings.arguments};
    print(mapData);

    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                label: Text('Edit Location'),)
            ],
          )
      ),
    );
  }
}
