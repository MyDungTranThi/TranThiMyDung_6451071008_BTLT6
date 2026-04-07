import 'package:flutter/material.dart';

class Bai2ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Text('Hello, ${username ?? "User"}'),
      ),
    );
  }
}