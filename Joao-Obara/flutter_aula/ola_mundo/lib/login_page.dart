import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usuario = "";
  String senha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw2NL1FLOfzPcP06X2q4T4tT5wqohItaWDRto2t8VuXw&s"),
                TextField(
                  onChanged: (text) => usuario =
                      text, //quando tiver mudança passar o email para a variavel usuario
                  keyboardType: TextInputType.emailAddress, //tipo de teclado
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  onChanged: (text) => senha = text,
                  obscureText: true, //Não mostrar a senha
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    //Login simulado
                    if (usuario == "root" && senha == "root") {
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                  }, //Corrigir
                  child: const Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
