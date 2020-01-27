import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hardy Cursos'),
      ),
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
              'A noite, vovô Kowalski vê o imã cair no pé do pinguim queixoso e vovó põe açucar no chá de tâmaras, do Jabuti feliz.')
        ],
      ),
    );
  }
}
