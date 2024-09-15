import 'package:flutter/material.dart';
import 'package:zenoa/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // product image
        const Icon(Icons.shopify),

        // product name
        Text(product.name),

        // product description
        Text(product.description),

        // product price + add to cart button
        Text(product.price.toStringAsFixed(2)),
      ],
    );
  }
}
