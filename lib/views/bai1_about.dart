import 'package:flutter/material.dart';

class Bai1AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Center(
        child: Text('About our company'),
      ),
    );
  }
}
