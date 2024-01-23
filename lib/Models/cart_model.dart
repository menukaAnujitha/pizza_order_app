import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    [
      "lib/images/pizza8.jpg",
      "first pizza",
      "Lorem ipsum Dolor ",
      "12.50",
    ],
    [
      "lib/images/pizza5.jpg",
      "second pizza",
      "Lorem ipsum Dolor ",
      "15.50",
    ],
    [
      "lib/images/pizza.jpg",
      "third pizza",
      "text twzer",
      "20.50",
    ],
    [
      "lib/images/pizza4.jpg",
      "fourth pizza",
      "Lorem ipsum Dolor ",
      "10.50",
    ],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][3]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
