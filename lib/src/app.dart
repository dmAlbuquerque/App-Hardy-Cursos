import 'package:flutter/material.dart';
import 'package:hardycursos/src/screens/home_screen.dart';
import 'package:hardycursos/src/utils/rotas.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      title: 'Hardy Cursos',
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        Rotas.loginEmail: (context) => LoginComEmail(),
        Rotas.homeScreen: (context) => HomeScreen(),
      },
    );
  }
}
