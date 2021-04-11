import 'package:flutter/material.dart';
import './questionario.dart';
import './respostas.dart';

void main() {
  runApp(new PerguntaApp());
}

var _perguntaSelecionada = 0;

class PerguntaAppState extends State<PerguntaApp> {
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _perguntas = const [
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual sua banda favorita?',
        'respostas': [
          'Steely Dan',
          'David Lee Roth',
          'Rainbow',
          'Patrulha do Espaço'
        ],
      },
    ];

    bool temPerguntaSelecionada() {
      return _perguntaSelecionada < _perguntas.length;
    }

    void responder() {
      setState(() {
        if (temPerguntaSelecionada()) {
          ++_perguntaSelecionada;
        }
      });
    }

    List<String> respostas = temPerguntaSelecionada()
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada()
            ? Column(
                children: [
                  Questionario(_perguntas[_perguntaSelecionada]['texto']),
                  ...respostas.map((e) => Respostas(e, responder)).toList(),
                ],
              )
            : Center(
                child: Text(
                  'Parabéns',
                  style: TextStyle(fontSize: 28),
                ),
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
