import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.share),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.blue,
              width: 200,
            ),
            Container(
              color: Colors.red,
              width: 200,
            ),
            Container(
              color: Colors.green,
              width: 200,
            ),
            Container(
              color: Colors.yellow,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
