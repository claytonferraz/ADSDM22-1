import 'package:flutter/material.dart';

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
