import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cálculo de IMC'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Peso:'
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Altura:'
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){}, 
                      child: Text('Calcular'),
                    ),
                  ]
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.red,
                margin: EdgeInsets.fromLTRB(10,0,10,10),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.center,
                  child: Image.asset(
                      'images/ideal.jpg', 
                      width: 100, 
                      height: 100,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
