import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
        home: Home()
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'My First App'
        ),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Center(
        child: Text(
          'This is Body',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey,
            fontFamily: 'IndieFlower',
          ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Ok'),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
