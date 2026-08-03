import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(name: 'Iago'));
}

class MyApp extends StatefulWidget {
  final String name;

  const MyApp({super.key, this.name = ''});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salario = 7000;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('Apetou aqui');
              setState(() {
                salario = salario + 100;
              });
            },
            child: Text(
              'O salário de ${widget.name} é $salario',
              style: TextStyle(color: Colors.black),
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

void main() {
  int valor = 10;
  runApp(MyApp(valor: valor, title: 'MyApp'));
}

class MyApp extends StatelessWidget {
  final String title;
  final int valor;

  const MyApp({super.key, required this.valor, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(this.title)),
        body: Center(
          child: Text(
            "Hello World, o valor e ${this.valor}",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
*/
