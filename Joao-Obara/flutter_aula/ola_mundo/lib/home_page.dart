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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Flutter ADS'),
      ),
      body: Center(
          child: GestureDetector(
              child: Text(
                'Click: $counter',
                style: const TextStyle(fontSize: 100),
              ),
              onTap: () {
                // ao colocar o setState vai mudar o estado
                setState(() {
                  counter--;
                });
              })),
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
