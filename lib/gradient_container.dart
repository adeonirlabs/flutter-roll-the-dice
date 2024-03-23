import 'package:flutter/material.dart';
import 'package:roll_the_dice/content_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.indigo, Colors.black],
        ),
      ),
      child: const Center(
        child: StyledText('Hello World!'),
      ),
    );
  }
}
