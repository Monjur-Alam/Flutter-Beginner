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
      body: Center(
          child: IconButton(
            onPressed: () {
              print('you clicked me');
            },
            icon: Icon(Icons.alternate_email),
            color: Colors.amber,
          )

          // RaisedButton.icon(
          //   onPressed: () {},
          //   icon: Icon(Icons.mail),
          //   label: Text('mail me'),
          //   color: Colors.amber,
          // ),

          // RaisedButton(
          //   onPressed: () {
          //     print('you clicked me');
          //   },
          //   child: Text('Click Me'),
          //   color: Colors.blue,
          // ),

          // Icon(
          //   Icons.account_circle_outlined,
          //   color: Colors.amber,
          //   size: 100.0,
          // ),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
