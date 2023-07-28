import 'package:flutter/material.dart';
import 'package:untitled1/home_page.dart';

class TrendingPage extends StatelessWidget {
  static const String id = 'trending_page';

  const TrendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("trending_Page", style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
            ),),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, HomePage.id);
            }, child: const Text('Go to Home')),
          ],
        ),
      ),
    );;
  }
}
