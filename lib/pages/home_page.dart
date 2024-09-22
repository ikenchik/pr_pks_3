import 'package:flutter/material.dart';
import 'package:pr_pks_3/components/product.dart';
import 'package:pr_pks_3/models/prod.dart';

final List<Product> products = <Product>[];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("ILYA MARKET",
            style: TextStyle(fontWeight: FontWeight.bold,
              letterSpacing: 6,
              fontSize: 30,
            ),
          )
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductItem(product: products[index]);
        },
      ),
    );
  }
}