// sempre se cria uma classe que vai dentro da classe StateFul
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  //Define o tema
  bool escuro = false;

  @override
  Widget build(BuildContext context) {
    /* var container = Container(
      height: 150,
      width: 150,
      color: Colors.blueAccent,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 50,
          width: 50,
          color: Colors.orange,
          child: const Icon(Icons.book),
        ),
      ),
    ); */

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Flutter ADS'),
      ),
      body: Center(
        child: Switch(
          value: escuro,
          onChanged: (value) {
            //realiza a alteração no Switch
            setState(() {
              escuro = value;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_circle),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
