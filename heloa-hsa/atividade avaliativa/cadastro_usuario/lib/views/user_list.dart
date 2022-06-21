import 'package:cadastro_usuario/components/user_tile.dart';
import 'package:cadastro_usuario/models/user.dart';
import 'package:cadastro_usuario/provider/users.dart';
import 'package:cadastro_usuario/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de funcionario'),
        backgroundColor: Color.fromARGB(255, 62, 36, 156),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.userForm,
                arguments: const User(
                  id: '',
                  name: '',
                  email: '',
                  avatarUrl: '',
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
