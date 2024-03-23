import 'package:flutter/material.dart';

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
        child: Text(
          'Hello World!',
          style: TextStyle(fontSize: 48, color: Colors.white),
        ),
      ),
    );
  }
}
