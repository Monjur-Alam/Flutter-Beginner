import 'package:flutter/cupertino.dart';
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.start,

        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Expanded(flex: 2, child: Image.asset('assets/android.png')),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
              child: Text('Container'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(30.0),
              child: Text('Container'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(30.0),
              child: Text('Container'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
