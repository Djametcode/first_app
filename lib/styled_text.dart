import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      "Hello Tofik",
      style: TextStyle(color: Colors.red, fontSize: 30),
    );
  }
}
