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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
            child: Column(
              children: [
                TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      mapData['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  mapData['time'],
                  style: TextStyle(
                      fontSize: 48.0,
                      letterSpacing: 2.0
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
