import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hardy Cursos'),
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Tab 1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Tab 2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Tab 3'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Tab 4'),
          ),
        ],
        backgroundColor: Colors.black,
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        //onTap: _onItemTapped,
      ),
    );
  }

  //TODO: fazer o bottom navigation

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
