import 'package:flutter/material.dart';
import 'package:roll_the_dice/gradient_container.dart';

void main() {
  runApp(const RollTheDice());
}

class RollTheDice extends StatelessWidget {
  const RollTheDice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll the Dice',
      home: Scaffold(
        body: GradientContainer(
          child: Image.asset(
            'assets/images/dice-1.png',
            width: 200,
          ),
        ),
      ),
    );
  }
}
