import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  final List _favorite = [];
  List get favorite => _favorite;
  // bool isExist = false;
  void isFavorite(Map item) {
    bool itemExists = _favorite.any((map) => map['name'] == item["name"]);
    print(itemExists);

    if (itemExists) {
      favorite.removeWhere((map) => map['name'] == item["name"]);
      // isExist = false;
      // notifyListeners();
      // favorite.remove(item);
    } else {
      _favorite.add(item);
      // isExist = true;
    }
    notifyListeners();
    print(favorite);
  }

  bool isExist(Map item) {
    bool itemExists = _favorite.any((map) => map['name'] == item["name"]);
    return itemExists;
  }

  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
