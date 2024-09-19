import 'package:flutter/material.dart';
import 'package:zenoa/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 2
    Product(
        name: "DualFlex Men's Jacket",
        price: 99.99,
        description:
            "Stylish and functional, this jacket features double pockets for convenience on any adventure.",
        imgPath: "assets/Images/2020-New-Double-Pockets-Men.jpg"),
    // product 2
    Product(
        name: "Akatsuki Cloud Hoodie",
        price: 99.99,
        description:
            "Show off your anime fandom with this cozy hoodie, inspired by iconic designs.",
        imgPath: "assets/Images/Akatuski.jpg"),
    // product 3
    Product(
        name: "Asta Adventure Hoodie",
        price: 99.99,
        description:
            "Capture the spirit of Black Clover with this comfortable hoodie, perfect for daring fans.",
        imgPath: "assets/Images/Asta.jpg"),
    // product 4
    Product(
        name: "Storek Sneakers",
        price: 99.99,
        description:
            "Sleek and supportive, these sneakers are designed for style and versatility.",
        imgPath: "assets/Images/daniel-storek-JM-qKEd1GMI-unsplash.jpg"),
    // product 5
    Product(
        name: "G-Shock Classic Watch",
        price: 99.99,
        description:
            "Durable and stylish, this watch is ideal for any setting, from outdoor to office.",
        imgPath: "assets/Images/Gshock.jpg"),
    // product 6
    Product(
        name: "Liebe Tee",
        price: 99.99,
        description:
            "Celebrate Black Clover with this comfortable tee, featuring Liebe's picture prominently.",
        imgPath: "assets/Images/White.jpg"),
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
