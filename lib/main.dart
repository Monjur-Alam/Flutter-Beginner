import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Padding(
        padding: EdgeInsets.all(100.0), // margin not working here
        child: Text('Container & Padding'),
      ),

      // Container(
      //   margin: EdgeInsets.all(30.0),
      //   padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
        // padding: EdgeInsets.all(50.0),
        // color: Colors.grey[400],
        // child: Text('Container & Padding'),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
