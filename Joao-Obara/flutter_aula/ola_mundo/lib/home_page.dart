// sempre se cria uma classe que vai dentro da classe StateFul
import 'package:flutter/material.dart';

import 'app_controller.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Flutter ADS'),
        actions: const [CustomSwitch()],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //ListView possui tela infinita/rolagem...
          // scrollDirection: Axis.horizontal, //Rolar horizontalmente
          children: [
            const Center(child: CustomSwitch()),
            Container(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 50, width: 50, color: Colors.yellow),
                Container(height: 50, width: 50, color: Colors.red),
                Container(height: 50, width: 50, color: Colors.blue),
              ],
            ),
          ],
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

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instanse.escuro,
      onChanged: (value) {
        //Chama o metodo changeTheme
        AppController.instanse.changeTheme();
      },
    );
  }
}
