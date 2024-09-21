import 'package:flutter/material.dart';
import 'package:pr_pks_3/pages/product_page.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductPage()),
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(234, 213, 208, 208),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Center(child: Text(title)),
        ),
      ),
    );
  }
}