import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_crud/provider/users_provider.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.orange,
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.user_form,
                  arguments: user,
                );
              },
            ),
            IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {
                  showAlertDialog(context);
                }),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    final UsersProvider users = Provider.of(context, listen: false);

    Widget cancelButton = FlatButton(
      child: Text('Cancelar'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    Widget confirmButton = FlatButton(
      child: Text('Confirmar'),
      onPressed: () {
        users.remove(user.id);
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text('Alerta'),
      content: Text('Tem certeza que deseja excluir?'),
      actions: <Widget>[
        cancelButton,
        confirmButton,
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
