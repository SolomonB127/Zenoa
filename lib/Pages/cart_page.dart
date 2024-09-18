import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zenoa/Components/button.dart';
import 'package:zenoa/models/product.dart';
import 'package:zenoa/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // Remove item from cart
  void removeItemFromCart(BuildContext context, Product product) {
    // show dialog box to confirm removal
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: const Text("Remove from cart?"),
                actions: <Widget>[
                  // cancel button
                  MaterialButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Cancel")),

                  // add to cart
                  MaterialButton(
                      onPressed: () {
                        // pop the box
                        Navigator.pop(context);

                        // Navigate to cart
                        context.read<Shop>().removeFromCart(product);
                      },
                      child: const Text("Yes")),
                ]));
  }

  // Payment method
  void payBtn(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              content: Text("Connect to payment backend"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    // getting access to cart
    final cart = context.watch<Shop>().cart;
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
        body: Column(children: <Widget>[
          // cart list
          Expanded(
              child: ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    // get individual items
                    final item = cart[index];
                    // return as cart list
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(item.price.toStringAsFixed(2)),
                      trailing: IconButton(
                          onPressed: () => removeItemFromCart(context, item),
                          icon: const Icon(Icons.delete)),
                    );
                  })),

          // pay btn
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(25.0),
              child: MyButton(
                  onTap: () => payBtn(context),
                  child: const Text(
                    "Pay Now\$\$!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ]));
  }
}
