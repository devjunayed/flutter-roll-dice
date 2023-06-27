import 'dart:math';

import 'package:flutter/material.dart';
final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = random.nextInt(6) + 1;
    });
  }   

  @override
  Widget build(context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(
        height: 40.0,
      ),
      ElevatedButton(
        onPressed: rollDice,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 15.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )),
        child: const Text(
          'Roll Dice',
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    ]);
  }
}
