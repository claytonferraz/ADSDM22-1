import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget(title: 'Aula ADS'));
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      // home: Container(child: const Center(child: Text('aula material'))),
      home: const HomePage(),
    );
  }
}

// sempre se cria uma classe que vai dentro da classe StateFul
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
    return Container(
        child: Center(
            child: GestureDetector(
                child: Text('Click: $counter'),
                onTap: () {
                  // ao colocar o setState vai mudar o estado
                  setState(() {
                    counter++;
                  });
                })));
  }
}
