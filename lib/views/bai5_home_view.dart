import 'package:flutter/material.dart';
import 'bai5_pick_color_view.dart';

class Bai5HomeView extends StatefulWidget {
  @override
  _Bai5HomeViewState createState() => _Bai5HomeViewState();
}

class _Bai5HomeViewState extends State<Bai5HomeView> {
  Color selectedColor = Colors.red;

  Future<void> pickColor() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => Bai5PickColorView()),
    );

    if (result != null) {
      setState(() {
        selectedColor = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bai 5 - MSSV: 6451071008')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: selectedColor,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: pickColor,
              child: Text('Pick Color'),
            ),
          ],
        ),
      ),
    );
  }
}