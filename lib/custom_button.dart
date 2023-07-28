import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  VoidCallback onTap;

  CustomButton({super.key, required this.onTap});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  static bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
        isTapped = true;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12.0),
        ),
        width: isTapped ? 50 : 250,
        height: 50,
        child: isTapped ? showIcon() : buildText(),
      ),
    );
  }

  Icon showIcon() {
    return const Icon(
      Icons.done,
      color: Colors.white,
    );
  }

  Text buildText() {
    return const Text(
      "Click",
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 2.5),
    );
  }
}
