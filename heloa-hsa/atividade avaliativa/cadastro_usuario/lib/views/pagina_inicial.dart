import 'package:cadastro_usuario/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../routes/app_routes.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'imagens/logotipo.png',
                width: 250,
              ),
              GestureDetector(
                onTap: () {
                  print("ola");
                  Navigator.of(context).pushNamed(
                    AppRoutes.login,
                  );
                  //  Navigator.push(context,
                  //   MaterialPageRoute(builder: (context) => login()));
                },
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width / 1.2,
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
            ],
          ),
        ),
      ),
    );
  }
}
