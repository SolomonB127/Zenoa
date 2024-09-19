import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zenoa/models/product.dart';
import 'package:zenoa/models/shop.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({super.key, required this.product});

  // add to cart omPressed
  void addToCart(BuildContext context) {
    // show dialog box to confirm addition
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: const Text("Do you want to add to cart?"),
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
                        context.read<Shop>().addToCart(product);
                      },
                      child: const Text("Yes")),
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // product image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).colorScheme.secondary),
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    child: Image.asset(product.imgPath)),
              ),

              const SizedBox(
                height: 25,
              ),

              // product name
              Text(
                product.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              const SizedBox(
                height: 10,
              ),

              // product description
              Text(
                product.description,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ],
          ),

          const SizedBox(
            height: 25,
          ),

          // product price + add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Product price
              Text('\$${product.price.toStringAsFixed(2)}'),

              // add to cart button
              Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                      onPressed: () => addToCart(context),
                      icon: const Icon(Icons.add)))
            ],
          ),
        ],
      ),
    );
  }
}
