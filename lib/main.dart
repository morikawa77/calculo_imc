import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';

// web friendly check for apple based platforms
bool isCupertino() => !kIsWeb && (Platform.isIOS || Platform.isMacOS);

String helloText = "Hello World";

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isCupertino()) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: helloText,
        theme: CupertinoThemeData(
          primaryColor: Colors.blueGrey,
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.share),
        ),
        body: Text(helloText),
      ),
    );
  }
}
