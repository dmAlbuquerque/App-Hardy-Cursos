import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BtnButton extends StatelessWidget {
  final String titulo;
  final Color corTitulo;
  final double largura;
  final Function onPressed;
  final Color background;
  final EdgeInsetsGeometry margem;

  BtnButton(
      {@required this.titulo,
      @required this.onPressed,
      this.largura = double.infinity,
      this.corTitulo = Colors.black,
      this.background = Colors.white,
      this.margem});

  Widget build(context) {
    return Observer(
      builder: (_) {
        return Container(
          height: 50,
          width: largura,
          margin: margem,
          child: RaisedButton(
            child: Text(
              titulo,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            textColor: corTitulo,
            onPressed: onPressed,
            color: background,
          ),
        );
      },
    );
  }
}
