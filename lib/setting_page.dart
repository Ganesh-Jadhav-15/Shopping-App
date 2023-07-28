import 'package:flutter/material.dart';
import 'package:untitled1/trending_page.dart';

class SettingPage extends StatelessWidget {
  static const String id = 'setting_page';

  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Settings"),
      ),
    );
  }
}
