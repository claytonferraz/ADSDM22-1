import 'package:flutter/material.dart';
import 'package:flutter_application_1/rodape.dart';
import 'package:velocity_x/velocity_x.dart';

class CommonLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'imagens/logotipo.png',
          width: 200,
        ),
      ],
    );
  }
}
