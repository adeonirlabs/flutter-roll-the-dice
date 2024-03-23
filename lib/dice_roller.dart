import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;

  void onRollDice() {
    setState(() {
      int newDice;
      do {
        newDice = randomizer.nextInt(6) + 1;
      } while (newDice == currentDice);
      currentDice = newDice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 240,
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: onRollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.indigoAccent,
            padding: const EdgeInsets.only(left: 24, right: 24),
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          child: const Text('Roll the Dice'),
        ),
      ],
    );
  }
}
