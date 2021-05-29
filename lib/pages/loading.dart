import 'package:flutter/material.dart';
import 'package:flutter_app/services/world_time.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<void> getData() async {
    try {
      Response response =
          await get(Uri.parse('https://jsonplaceholder.typicode.com/posts/2'));
      Map data = jsonDecode(response.body);
      print(data['title']);
      // Navigator.pushNamed(context, "second",
      //     arguments: {"name": "Bijendra", "rollNo": 65210});
    } catch (e) {
      print('Caught error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
          // child: SpinKitRotatingCircle(
          //   color: Colors.white,
          //   size: 50.0,
          // )
          ),
    );
  }
}
