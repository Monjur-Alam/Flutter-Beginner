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
        child: Image.asset('assets/a.png'),
          // image: NetworkImage('https://image.winudf.com/v2/image/dHcudXJsLm9tZWdhLnNjcmVlbnNpemVfc2NyZWVuc2hvdHNfMV9lNTlhYWI4Zg/screen-1.jpg?fakeurl=1&type=.jpg'),
          // image: AssetImage('assets/android.png'),
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
