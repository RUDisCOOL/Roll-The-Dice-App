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
  int number = 6;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (var i = 1; i <= 6; i++) {
      precacheImage(AssetImage("assets/images/dice-$i.png"), context);
    }
  }

  void rollDice() {
    setState(() {
      number = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/dice-$number.png",
          width: 200,
        ),
        const SizedBox(
          height: 34,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 34, bottom: 34),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Roll the dice!!"),
        ),
      ],
    );
  }
}
