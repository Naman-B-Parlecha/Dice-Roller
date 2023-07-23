import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: BackGroundDec(),
      ),
    ),
  );
}

class BackGroundDec extends StatelessWidget {
  const BackGroundDec({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightBlueAccent, Colors.greenAccent],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentdicenum = 2;
  void roll() {
    setState(() {
      currentdicenum = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'asset/images/dice-$currentdicenum.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: roll,
          child: const Text(
            "Roll Dice",
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
        )
      ],
    );
  }
}
