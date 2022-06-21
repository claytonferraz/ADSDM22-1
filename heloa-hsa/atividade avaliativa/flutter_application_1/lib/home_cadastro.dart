import 'package:flutter/material.dart';
import 'package:flutter_application_1/common_logo.dart';
import 'package:flutter_application_1/homeTabBar.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:flutter_application_1/rodape.dart';
import 'package:flutter_application_1/signIn_page.dart';
import 'package:flutter_application_1/user_form.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeCadastro extends StatefulWidget {
  @override
  _HomeCadastroState createState() => _HomeCadastroState();
}

class _HomeCadastroState extends State<HomeCadastro> {
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
                  HeightBox(30),
                  "CADASTRO".text.size(22).yellow100.make(),
                  HeightBox(30),
                  GestureDetector(
                    onTap: () {
                      print("ola");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UserForm()));
                    },
                    child: Container(
                      height: 80.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 229, 241),
                          border: Border.all(
                            color: Color.fromARGB(255, 221, 220, 230),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 17, 33, 134),
                            Color.fromARGB(255, 8, 7, 109)
                          ]),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 44, 5, 133),
                                blurRadius: 2.0,
                                offset: Offset(2.0, 2.0))
                          ]),
                      child: Center(
                        child: Text(
                          'PROFISSIONAL'.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  HeightBox(30),
                  GestureDetector(
                    onTap: () {
                      print("ola");
                      // Navigator.push(
                      //    context,
                      //    MaterialPageRoute(
                      //        builder: (context) => SignInPage()));
                    },
                    child: Container(
                      height: 80.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 229, 241),
                          border: Border.all(
                            color: Color.fromARGB(255, 221, 220, 230),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 17, 33, 134),
                            Color.fromARGB(255, 8, 7, 109)
                          ]),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 44, 5, 133),
                                blurRadius: 2.0,
                                offset: Offset(2.0, 2.0))
                          ]),
                      child: Center(
                        child: Text(
                          'PACIENTE'.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  HeightBox(30),
                  GestureDetector(
                    onTap: () {
                      print("ola");
                      //Navigator.push(
                      // context,
                      // MaterialPageRoute(
                      //    builder: (context) => SignInPage()));
                    },
                    child: Container(
                      height: 80.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 221, 229, 241),
                          border: Border.all(
                            color: Color.fromARGB(255, 221, 220, 230),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 17, 33, 134),
                            Color.fromARGB(255, 8, 7, 109)
                          ]),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 44, 5, 133),
                                blurRadius: 2.0,
                                offset: Offset(2.0, 2.0))
                          ]),
                      child: Center(
                        child: Text(
                          'FUNCIONARIO'.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  HeightBox(30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
