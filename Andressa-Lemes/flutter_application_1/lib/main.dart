

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

 main ()=>runApp(const JardimdoApp());
  class JardimdoApp extends StatelessWidget {
  const JardimdoApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Jardim do Céu!!!'),
          ),
          body: Column(
            children: <Widget>[
             Text('Jardim do C'[0]),
             const RaisedButton(
               child: Text('JardimdoApp 1'),
               onPressed: null,
             )
            ],
        ),
      ),
    };
  }


