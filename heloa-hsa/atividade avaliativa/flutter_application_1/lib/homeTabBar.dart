import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/signIn_page.dart';

class HomeTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('HOME'),
          bottom: TabBar(
            tabs: <Widget>[Tab(text: 'Home', icon: Icon(Icons.home))],
          ),
        ),
      ),
    );
  }
}
