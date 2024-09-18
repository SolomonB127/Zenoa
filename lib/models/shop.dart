import 'package:flutter/material.dart';
import 'package:zenoa/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 2
    Product(
        name: "Product 1",
        price: 99.99,
        description: "Item description",
        imgPath: "imgPath"),
    // product 2
    Product(
        name: "Product 2",
        price: 99.99,
        description: "Item description",
        imgPath: "imgPath"),
    // product 3
    Product(
        name: "Product 3",
        price: 99.99,
        description: "Item description",
        imgPath: "imgPath"),
    // product 4
    Product(
        name: "Product 4",
        price: 99.99,
        description: "Item description",
        imgPath: "imgPath"),
    // product 5
    Product(
        name: "Product 5",
        price: 99.99,
        description: "Item description",
        imgPath: "imgPath"),
    // product 6
    Product(
        name: "Product 6",
        price: 99.99,
        description: "Item description",
        imgPath: "imgPath"),
  ];

  // user cart
  final List<Product> _cart = [];

  // get products list
  List<Product> get shop => _shop;

  // get cart products
  List<Product> get cart => _cart;

  // add products to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove products to cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
