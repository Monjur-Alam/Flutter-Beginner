import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    getData();
    print('initState called');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: FlatButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is $counter'),
      )
    );
  }

  void getData() async {
    String firstName = await Future.delayed(Duration(seconds: 3), () {
      return 'Hello';
    });

    String lastName = await Future.delayed(Duration(seconds: 2), () {
      return 'World';
    });

    print('$firstName $lastName');
  }
}
