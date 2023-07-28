import 'package:flutter/material.dart';
import 'package:untitled1/custom_button.dart';
import 'package:untitled1/setting_page.dart';

class HomePage extends StatelessWidget {
  static const String id = 'home_page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Home_Page",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(onTap: () async {
              await Future.delayed(Duration(milliseconds: 900));
              Navigator.pushNamed(context, SettingPage.id);
            },),
          ],
        ),
      ),
    );
  }
}
