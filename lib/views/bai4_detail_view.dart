import 'package:flutter/material.dart';
import 'bai4_home_view.dart';

class Bai4DetailView extends StatelessWidget {
  final Product product;

  Bai4DetailView({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail - MSSV: 6451071008')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product.name, style: TextStyle(fontSize: 24)),
            Text('\$${product.price}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}