import 'package:flutter/material.dart';
import 'package:roll_the_dice/gradient_container.dart';

void main() {
  runApp(const RollTheDice());
}

class RollTheDice extends StatelessWidget {
  const RollTheDice({super.key});

  void onRollDice() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll the Dice',
      home: Scaffold(
        body: GradientContainer(
          child: Column(
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
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                child: const Text('Roll the Dice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
