import 'package:flutter/material.dart';
import 'package:flutter_application_1/common_logo.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:flutter_application_1/rodape.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String email = "";
  String senha = "";

  bool checked = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0XFFF95A3B), const Color(0XFFF96713)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomCenter,
                stops: [0.0, 0.8],
                tileMode: TileMode.mirror),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RodapePager(),
                  Image.asset(
                    'imagens/logotipo.png',
                    width: 250,
                  ),
                  "LOGIN".text.size(22).yellow100.make(),
                  HeightBox(30),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: TextField(
                      onChanged: (text) => email = text,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 158, 158, 158),
                        ),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: TextField(
                      onChanged: (text) => senha = text,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.grey,
                        ),
                        hintText: 'Senha',
                      ),
                    ),
                  ),
                  HeightBox(25),
                  GestureDetector(
                    onTap: () {
                      if (email == 'modestoheloa@gmail.com' && senha == '123') {
                        print('login com sucesso');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      } else {
                        print("login errado");
                      }
                    },
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 1.9,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFf00008b), Color(0xFFf000080)],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                        child: Text(
                          'Login'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  HeightBox(25),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Registration()));
          },
          child: Container(
              height: 40,
              color: Color.fromARGB(255, 5, 30, 143),
              child: Center(
                  child: "Recuperar Senha..! Entrar"
                      .text
                      .white
                      .makeCentered()
                      .px16())),
        ),
      ),
    );
  }
}
