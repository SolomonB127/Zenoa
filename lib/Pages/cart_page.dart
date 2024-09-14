import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text(
            "Cart Page",
            style: GoogleFonts.habibi(),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}
