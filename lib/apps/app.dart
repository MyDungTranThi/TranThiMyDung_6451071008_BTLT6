import 'package:flutter/material.dart';

// Bai 1
import '../views/bai1_about.dart';
import '../views/bai1.dart';

// Bai 2
import '../views/bai2.dart';
import '../views/bai2_profile.dart';

// Bai 3
import '../views/bai3.dart';

// Bai 4
import '../views/bai4_home_view.dart';

// Bai 5
import '../views/bai5_home_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/bai5',
      routes: {
        '/bai1': (context) => Bai1HomeView(),
        '/about': (context) => Bai1AboutView(),
        '/bai2': (context) => Bai2HomeView(),
        '/profile': (context) => Bai2ProfileView(),
        '/bai3': (context) => Bai3HomeView(),
        '/bai4': (context) => Bai4HomeView(),
        '/bai5': (context) => Bai5HomeView(),
      },
    );
  }
}