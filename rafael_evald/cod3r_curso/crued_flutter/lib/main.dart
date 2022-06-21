import 'package:crued_flutter/provider/users.dart';
import 'package:crued_flutter/routes/app_routes.dart';
import 'package:crued_flutter/views/user_form.dart';
import 'package:crued_flutter/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.home: (_) => const UserList(),
          AppRoutes.userForm: (_) => const UserForm(),
        },
      ),
    );
  }
}
