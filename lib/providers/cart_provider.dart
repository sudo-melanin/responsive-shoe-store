import 'package:flutter/material.dart';
import 'package:shoe_app/models/cart_item.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _cart = [];

  List<CartItem> get cart => _cart;

  void addProduct(CartItem cartItem) {
    _cart.add(cartItem);
    notifyListeners();
  }

  void removeProduct(CartItem cartItem) {
    _cart.removeWhere((item) => item.id == cartItem.id && item.size == cartItem.size);
    notifyListeners();
  }
}
