import 'package:flutter/material.dart';
import 'package:calculator/styles/app_styles.dart';
import 'package:calculator/operations/operations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Operations _operations = new Operations();
  
  GestureDetector gestureDetector(String number) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _operations.calcular(number);
        });
      },
      child: Text(number, style: AppStyle.numbers),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Calculadora'))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: AppStyle.numberResultPadding,
                  child: Text(
                    _operations.display,
                    style: AppStyle.numberResult,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                gestureDetector('AC'),
                Text(''),
                Text(''),
                gestureDetector('<X'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                gestureDetector('7'),
                gestureDetector('8'),
                gestureDetector('9'),
                gestureDetector('/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                gestureDetector('4'),
                gestureDetector('5'),
                gestureDetector('6'),
                gestureDetector('x'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                gestureDetector('1'),
                gestureDetector('2'),
                gestureDetector('3'),
                gestureDetector('-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                gestureDetector('0'),
                gestureDetector('.'),
                gestureDetector('='),
                gestureDetector('+'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
