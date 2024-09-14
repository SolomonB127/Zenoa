import 'package:flutter/material.dart';
import 'package:zenoa/Pages/cart_page.dart';
import 'package:zenoa/Pages/home_page.dart';
import 'package:zenoa/themes/themes.dart';

import 'Pages/intro_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightmode,
      routes: {
        '/homepage': (context) => const HomePage(),
        '/cartpage': (context) => const CartPage(),
        },
    );
  }
}
