import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

import 'package:ola_mundo/home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      //O que vai mudar na animação. tema
      animation: AppController.instanse,
      builder: (BuildContext context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            //operador ternario, escuro? true ou false
            brightness: AppController.instanse.escuro
                ? Brightness.dark
                : Brightness.light,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
