import 'package:flutter/material.dart';
import '../../_models/restaurant_model.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: const TextStyle(fontSize: 24),
            ),
            Text(product.description),
          ],
        )),
        Text('${product.price.toStringAsFixed(2)}€',
            style: const TextStyle(fontSize: 16)),
      ]),
    ));
  }
}