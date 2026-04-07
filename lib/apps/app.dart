import 'package:flutter/material.dart';
import '../views/bai1.dart';
import '../views/bai1_about.dart';
import '../views/bai2.dart';
import '../views/bai2_profile.dart';
import '../views/bai3.dart';
import '../views/bai3_setting.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/bai3',
      routes: {
        // '/bai1': (context) => Bai1HomeView(),
        // '/about': (context) => Bai1AboutView(),
        // '/bai2': (context) => Bai2HomeView(),
        // '/profile': (context) => Bai2ProfileView(),
         '/bai3': (context) => Bai3HomeView(),
         '/bai3/settings': (context) => Bai3SettingsView(),
      },
    );
  }
}
