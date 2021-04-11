import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final String texto;
  Questionario(this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        this.texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
