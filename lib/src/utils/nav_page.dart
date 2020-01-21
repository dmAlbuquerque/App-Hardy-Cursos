import 'package:flutter/material.dart';

///Troca a tela e remove da pilha
nextRouteReplacement(BuildContext context, String rota) {
  Navigator.of(context).pushReplacementNamed(rota);
}
