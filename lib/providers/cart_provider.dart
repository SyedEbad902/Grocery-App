import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  // int counter = 0;
  // void increment() {
  //   counter++;
  //   notifyListeners();
  // }

  // void decrement() {
  //   if (counter > 0) counter--;
  //   notifyListeners();
  // }
  // Store the quantity for each product using a Map with product IDs as keys
  Map<dynamic, int> _productQuantities = {};

  // Method to get the quantity of a product. If the product is not in the cart, return 0.
  int getQuantity(String productId) {
    return _productQuantities[productId] ?? 0;
  }

  // Method to increment the quantity of a specific product
  void incrementQuantity(String productId) {
    _productQuantities[productId] = getQuantity(productId) + 1;
    notifyListeners();
    print(_productQuantities);
  }

  // Method to decrement the quantity of a specific product
  void decrementQuantity(String productId) {
    int currentQuantity = getQuantity(productId);
    if (currentQuantity > 0) {
      _productQuantities[productId] = currentQuantity - 1;
    }
    notifyListeners();


    print(_productQuantities);
  }
}
