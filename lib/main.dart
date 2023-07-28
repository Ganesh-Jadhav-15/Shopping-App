import 'package:flutter/material.dart';
import 'package:untitled1/home_page.dart';
import 'package:untitled1/setting_page.dart';
import 'package:untitled1/trending_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Center(),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id : (context) => HomePage(),
        SettingPage.id : (context) => SettingPage(),
        TrendingPage.id : (context) => TrendingPage(),
      },
    );
  }
}
