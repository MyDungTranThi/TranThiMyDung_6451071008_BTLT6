import 'package:flutter/material.dart';
import 'bai3_setting.dart';

class Bai3HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bai 3 Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Bai3SettingsView()),
            );
          },
          child: Text('Go to Settings'),
        ),
      ),
    );
  }
}