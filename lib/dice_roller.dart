import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  void onRollDice() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-1.png',
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
