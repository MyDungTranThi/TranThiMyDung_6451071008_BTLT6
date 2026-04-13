import 'package:flutter/material.dart';
import 'bai4_detail_view.dart';

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class Bai4HomeView extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'iPhone', price: 1000),
    Product(name: 'Samsung', price: 900),
    Product(name: 'Xiaomi', price: 700),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bai 4 - MSSV: 6451071008')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return Card(
            child: ListTile(
              title: Text(p.name),
              subtitle: Text('\$${p.price}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Bai4DetailView(product: p),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}