import 'package:flutter/material.dart';

class Bai5PickColorView extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick Color - MSSV: 6451071008')),
      body: ListView(
        children: colors.map((c) {
          return ListTile(
            title: Text(c.toString()),
            tileColor: c,
            onTap: () {
              Navigator.pop(context, c);
            },
          );
        }).toList(),
      ),
    );
  }
}