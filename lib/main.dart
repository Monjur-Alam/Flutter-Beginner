import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
            body: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.red,
                    ),
                    SizedBox(height: 20),

                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.red,
                    ),
                    SizedBox(height: 20),

                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.red,
                    ),
                    SizedBox(height: 20),

                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.red,
                    ),
                    SizedBox(height: 20),

                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20),

                  ],
                ),
              ],
            ),
          )
      )
    );
  }
}
