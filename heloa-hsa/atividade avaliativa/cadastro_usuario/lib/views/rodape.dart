import 'package:flutter/material.dart';

class RodapePager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.8,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 5, 30, 143),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90))),
        ),
      ],
    );
  }
}
