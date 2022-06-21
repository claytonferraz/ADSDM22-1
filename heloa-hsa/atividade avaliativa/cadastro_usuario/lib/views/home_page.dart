import 'package:cadastro_usuario/models/user.dart';
import 'package:cadastro_usuario/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checked = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color.fromARGB(255, 62, 36, 156),
        ),
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
                  Image.asset(
                    'imagens/logotipo.png',
                    width: 200,
                    height: 170,
                  ),
                  //RodapePager(),
                  // HeightBox(30),
                  //"Home".text.size(22).yellow100.make(),
                  // HeightBox(30),
                  GestureDetector(
                    onTap: () {
                      print("ola");
                      Navigator.of(context).pushNamed(
                        AppRoutes.cadastro,
                      );
                      // Navigator.push(
                      //   context,
                      //  MaterialPageRoute(
                      //    builder: (context) => HomeCadastro()));
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
                          'CADASTRO'.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  //HeightBox(30),
                  GestureDetector(
                    onTap: () {
                      print("ola");
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => SignInPage()));
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
                          'AGENDA'.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  //HeightBox(30),
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
                          'CAIXA'.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  //HeightBox(30),
                  GestureDetector(
                    onTap: () {
                      print("ola");
                      Navigator.of(context).pushNamed(
                        AppRoutes.UserList,
                        arguments: const User(
                          id: '',
                          name: '',
                          email: '',
                          avatarUrl: '',
                        ),
                      );
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
                          'CONSULTAR'.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  //  HeightBox(30),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            //Navigator.push(context,
            // MaterialPageRoute(builder: (context) => Registration()));
          },
          child: Container(
            height: 40,
            color: Color.fromARGB(255, 5, 30, 143),
            // child: Center(child: "".text.white.makeCentered().px16())),
          ),
        ),
      ),
    );
  }
}
