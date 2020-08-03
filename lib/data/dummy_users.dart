import 'package:flutter_crud/models/user.dart';

// Mock: um map com chave (numero) e um usuario
const dummy_users = {
  '1': const User(
      id: '1',
      name: 'Maria',
      email: 'maria@alunos.com.br',
      avatarUrl:
          'https://cdn.pixabay.com/photo/2016/09/01/08/25/smiley-1635464_960_720.png'),
  '2': const User(
      id: '2',
      name: 'Rafael',
      email: 'rafael@alunos.com.br',
      avatarUrl:
          'https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295429_960_720.png'),
  '3': const User(
      id: '3',
      name: 'Fernanda',
      email: 'fernanda@alunos.com.br',
      avatarUrl:
          'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_960_720.png'),
  '4': const User(
      id: '4',
      name: 'George',
      email: 'george@alunos.com.br',
      avatarUrl:
          'https://cdn.pixabay.com/photo/2016/12/13/16/17/dancer-1904467_960_720.png'),
};
