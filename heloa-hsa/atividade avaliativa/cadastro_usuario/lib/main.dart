import 'package:cadastro_usuario/provider/users.dart';
import 'package:cadastro_usuario/routes/app_routes.dart';
import 'package:cadastro_usuario/views/form_profissional.dart';
import 'package:cadastro_usuario/views/home_cadastro.dart';
import 'package:cadastro_usuario/views/home_page.dart';
import 'package:cadastro_usuario/views/pagina_inicial.dart';
import 'package:cadastro_usuario/views/signIn_page.dart';
import 'package:cadastro_usuario/views/user_form.dart';
import 'package:cadastro_usuario/views/user_list.dart';
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
          AppRoutes.telaInicial: (_) => const SignIn(),
          AppRoutes.login: (_) => SignInPage(),
          AppRoutes.home: (_) => HomePage(),
          AppRoutes.cadastro: (_) => HomeCadastro(),
          AppRoutes.profissional: (_) => FormProfissional(),
          AppRoutes.userForm: (_) => const UserForm(),
          AppRoutes.UserList: (_) => const UserList(),
        },
      ),
    );
  }
}
