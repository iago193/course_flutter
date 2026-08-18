import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        'Pergunta': 'Quem descobriu o brasil?',
        'Repostas': [
          'Dom Pedro I',
          'Pedro Alvares Cabral',
          'Tiradentes',
          'Dom Pedro II',
        ],
        'Alternativa_correta': 2,
      },
    ];

    quiz.add({
      'Pergunta': 'O Flutter é',
      'Repostas': [
        'Uma linguagem',
        'Um aplicativo',
        'Um notbook',
        'Um SDK',
      ],
      'Alternativa_correta': 4,
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Quiz'))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Perguntas 1 de 10'),
              Text('Pergunta'),

              ElevatedButton(
                onPressed: () {
                  print('Teste');
                },
                child: Text(
                  'Reposta 1',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight(500),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  print('Teste');
                },
                child: Text(
                  'Reposta 2',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight(500),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  print('Teste');
                },
                child: Text(
                  'Reposta 3',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight(500),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  print('Teste');
                },
                child: Text(
                  'Reposta 4',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight(500),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
