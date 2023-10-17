import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var aligmentLeft = Alignment.topCenter;
var aligmentRight = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: const [Colors.blue, Colors.black],
            begin: aligmentLeft,
            end: aligmentRight),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
