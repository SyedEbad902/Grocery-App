import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List _cartList = [];
  List get cartList => _cartList;

  void AddToCart(Map item) {
    bool itemExists = _cartList.any((map) => map['name'] == item["name"]);
    print(itemExists);

    if (itemExists) {
      print("already added");
      showToast("Item already added to cart");
      // isExist = false;
      // notifyListeners();
      // favorite.remove(item);
    } else {
      _cartList.add(item);
      showToast("Item added to cart");

      // isExist = true;
    }
    print(cartList);
  }

  void showToast(String mesg) {
    Fluttertoast.showToast(
      msg: mesg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  removeItem(int index, String ProductName) {
    cartList.removeAt(index);
    _productQuantities.removeWhere((key, value) => key == ProductName);
    notifyListeners();
  }

  // Store the quantity for each product using a Map with product IDs as keys
  final Map<dynamic, int> _productQuantities = {};

  // Method to get the quantity of a product. If the product is not in the cart, return 0.
  int getQuantity(String productName) {
    return _productQuantities[productName] ?? 0;
  }

  // Method to increment the quantity of a specific product
  void incrementQuantity(String productName) {
    _productQuantities[productName] = getQuantity(productName) + 1;
    notifyListeners();
    print(_productQuantities);
  }

  // Method to decrement the quantity of a specific product
  void decrementQuantity(String productName) {
    int currentQuantity = getQuantity(productName);
    if (currentQuantity > 0) {
      _productQuantities[productName] = currentQuantity - 1;
    }

    print(_productQuantities);
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}
