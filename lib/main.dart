import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  
  final txtPeso = TextEditingController();
  final txtAltura = TextEditingController();
  final txtIMC = TextEditingController();

  String imagem = 'images/abaixo.jpg';

  double? imc;

  void calcular() {
    double peso = double.parse(txtPeso.text);
    double altura = double.parse(txtAltura.text);

    setState(() => imc = peso / (altura * altura));

    if (imc! < 18.5)
      setState(() {
        imagem = 'images/abaixo.jpg';
        txtIMC.text = imc.toString();
      });
    else if (imc! < 24.9)
      setState(() {
        imagem = 'images/ideal.jpg';
        txtIMC.text = imc.toString();
      });
    else if (imc! < 29.9)
      setState(() {
        imagem = 'images/excesso.jpg';
        txtIMC.text = imc.toString();
      });
    else if (imc! < 39.9)
      setState(() {
        imagem = 'images/obesidade1.jpg';
        txtIMC.text = imc.toString();
      });
    else
      setState(() {
        imagem = 'images/obesidade2.jpg';
        txtIMC.text = imc.toString();
      });
 
  }

  void limpar() {
    setState(() {
      txtPeso.text = "";
      txtAltura.text = "";
    });
  }

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
                      controller: txtPeso,
                      decoration: InputDecoration(
                        labelText: "Peso"
                      ),
                    ),
                    TextField(
                      controller: txtAltura,
                      decoration: InputDecoration(
                        labelText: "Altura"
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: calcular,
                                child: Text("Calcular"),
                              ),
                            ),
                          Expanded(
                            child: ElevatedButton(
                            onPressed: limpar,
                            child: Text("Limpar"),
                            ),
                          ),
                          ],)
                      )
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: FittedBox(
                child: Image.asset(imagem),
              ),
            ),
            TextField(
                        controller: txtIMC,
                        decoration: InputDecoration(
                          labelText: "Valor do IMC"
                        ),
                      )
          ],
        ),
      ),
    );
  }
}
