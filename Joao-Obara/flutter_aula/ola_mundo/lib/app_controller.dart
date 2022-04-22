import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  //statico para manter as informações
  static AppController instanse = AppController();

  bool escuro = false;

  changeTheme() {
    //Tema igual ao oposto de tema
    escuro = !escuro;
    //Avisa as alterações realizadas
    notifyListeners();
  }
}
