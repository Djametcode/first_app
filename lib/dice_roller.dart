import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomize = Random();
  var activeImage = 'assets/images/dice-1.png';
  var currenctDiceRoll = 2;

  void rollDice() {
    setState(() {
      currenctDiceRoll = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currenctDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 15),
              backgroundColor: Colors.black12),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
