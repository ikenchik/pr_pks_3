import 'package:flutter/material.dart';
import 'package:pr_pks_3/components/product.dart';
// List <Product>
final List<String> titleProduct = <String>['Утюг', 'Телевизор', 'Кошелек'];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("IlyaMarket")),
      ),
      body: ListView.builder(
        itemCount: titleProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return Product(title: titleProduct[index]);
        },
      ),
    );
  }
}