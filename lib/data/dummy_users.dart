import 'package:flutter_crud/models/user.dart';

// Mock: um map com chave (numero) e um usuario
const dummy_users = {
  '1': const User(
      id: '1',
      name: 'Maria',
      email: 'maria@alunos.com.br',
      avatarUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficons8.com%2Ficons%2Fset%2Favatar&psig=AOvVaw0V9aICMoiMHzOHgoKWmy7G&ust=1596356282664000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJiB5N_I-eoCFQAAAAAdAAAAABAE'),
  '2': const User(
      id: '2',
      name: 'Rafael',
      email: 'rafael@alunos.com.br',
      avatarUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Fpt%2Ficone%2Favatar-pessoas-pessoa-empresas-empate-menino-filho-cabelo-castanho%2F120516&psig=AOvVaw0V9aICMoiMHzOHgoKWmy7G&ust=1596356282664000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJiB5N_I-eoCFQAAAAAdAAAAABAN'),
  '3': const User(
      id: '3',
      name: 'Fernanda',
      email: 'fernanda@alunos.com.br',
      avatarUrl:
          'https://img3.stockfresh.com/files/r/robuart/m/20/8036599_stock-vector-young-woman-avatar-icon.jpg'),
  '4': const User(
      id: '4',
      name: 'George',
      email: 'george@alunos.com.br',
      avatarUrl:
          'https://st4.depositphotos.com/27867620/30353/v/450/depositphotos_303531866-stock-illustration-avatar-young-man-web-icon.jpg'),
};
