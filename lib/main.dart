import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.share),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                // color: Colors.blue,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Peso"
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Altura"
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      child: Text("Calcular"),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.red,
                margin: EdgeInsets.all(10),
                child: Image.asset('images/ideal.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
