import 'package:flutter/material.dart';
//import 'package:projeto_perguntas/main.dart';

class Respostas extends StatelessWidget {
  final texto;
  final void Function() quandoSelecionado;

  Respostas(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
