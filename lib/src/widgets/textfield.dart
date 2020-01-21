import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TextBox extends StatelessWidget {
  final bool isPassword;
  final String titulo;
  final Color corTitulo;
  final Color corDica;
  final Color corBorda;
  final String dica;
  final Function(String) onChanged;
  final String Function() errorText;
  final TextInputType keyboard;

  TextBox({
    @required this.titulo,
    @required this.dica,
    @required this.onChanged,
    @required this.errorText,
    this.corTitulo = Colors.white,
    this.corDica = Colors.white60,
    this.corBorda = Colors.white,
    this.keyboard = TextInputType.text,
    this.isPassword = false,
  });

  Widget build(context) {
    return Observer(
      builder: (_) {
        return Container(
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 4.0),
          child: TextField(
            onChanged: onChanged,
            obscureText: isPassword,
            decoration: InputDecoration(
              labelText: titulo,
              labelStyle: TextStyle(color: corTitulo),
              hintText: dica,
              hintStyle: TextStyle(color: corDica),
              errorText: errorText == null ? null : errorText(),
              errorStyle: TextStyle(color: Colors.yellow),
              enabledBorder: const UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
              ),
              //TODO: incluir a cor da borda como branca
            ),
            style: TextStyle(color: Colors.white),
            keyboardType: keyboard,
          ),
        );
      },
    );
  }
}
