import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(text: 'One sd jf d', author: 'Dl ufg af algf afah f'),
    Quote(text: 'One sd jf d', author: 'Dlufg af algf afah f'),
    Quote(text: 'One s djf d', author: 'Dlufg af algf afah f'),
    Quote(text: 'One sd jf d', author: 'Dlufg af algf afah f')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Column(
              children: quotes
                  .map((quote) => QuoteCard(
                      quote: quote,
                      delete: () {
                        setState(() {
                          quotes.remove(quote);
                        });
                      }))
                  .toList())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
