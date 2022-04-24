import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://img.freepik.com/vetores-gratis/logotipo-da-estufa_10250-3652.jpg",
                ),
                TextField(
                  onChanged: (text) => email = text,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  onChanged: (text) => senha = text,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (email == "dudueduardo11@gmail.com" &&
                          senha == "123456") {
                        print('login correto');
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('login errado');
                      }
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
