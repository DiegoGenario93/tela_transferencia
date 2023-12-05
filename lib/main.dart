import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue, // Defina a cor de fundo da AppBar para azul
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Transferência',
            style: TextStyle(color: Colors.white), // Defina a cor do texto para branco
          ),
        ),
        body: ListView(
          children: [
            Transferencia(
              valor: 4500000000.0,
              conta: 456,
            ),
            Transferencia(
              valor: 8001.0,
              conta: 1234,
            ),
            Transferencia(
              valor: 99999999.8,
              conta: 1111,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Transferencia extends StatelessWidget {
  final double valor;
  final int conta;

  Transferencia({required this.valor, required this.conta});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(valor.toStringAsFixed(1)),
        subtitle: Text(conta.toString()),
      ),
    );
  }
}


