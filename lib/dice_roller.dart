
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_role_dice_app/styled_text.dart';

final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRollNumber = 2;

  void rollDice() {
    setState(() {
      diceRollNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceRollNumber.png';,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.pink,
          ),
          child: StyledText("Roll dice"),
        )
      ],
    );
  }
}
