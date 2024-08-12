import 'package:flutter/material.dart';
import 'dart:developer' as dev;
import 'dart:math';

final random = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  int activeDice = 1;
  
  void roleDice() {
    
    setState(() {
      activeDice = random.nextInt(6) + 1;
    });
    
    dev.log('The Button is Cliced');
  }
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/dice-$activeDice.png',
              width: 200,
            ),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,

                textStyle:const TextStyle(fontSize: 28),
              ),
              onPressed: roleDice,
              child: const Text('Roll Dice'),
            ),
          ],
        );
  }
}