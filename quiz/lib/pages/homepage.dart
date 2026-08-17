import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Quiz'))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [FlutterLogo(size: 300),
            ElevatedButton(onPressed: () {}, child: Text('Jogar', style: TextStyle(fontSize: 30),),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
            ),)
            ],
          ),
        ),
      ),
    );
  }
}