import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_crud/data/dummy_users.dart';
import 'package:flutter_crud/models/user.dart';

class UsersProvider with ChangeNotifier {
  final Map<String, User> _items = {...dummy_users};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int index) {
    return _items.values.elementAt(index);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(user.id, (value) => user);
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
          id,
          () => User(
              id: id,
              name: user.name,
              email: user.email,
              avatarUrl: user.avatarUrl));
    }

    notifyListeners();
  }
}
