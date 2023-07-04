import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override // to write over main build or createstate or other existing function on the partent
  State<DiceRoller> createState() {   // is the alternative to build used in stateless
    return _DiceRollerState();
  }
}

// when using statefull we deal with 2 classes stateful and its state
class _DiceRollerState extends State<DiceRoller>{
  var diceRoll=2;
  void rollDice() {
    setState(() {
      diceRoll= randomizer.nextInt(6)+1;   // without setState no trigger for rerender
    });
    // print('changing image');
  }
  @override // to write over main build or createstate or other existing function on
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize
              .min, // allow not to take all vertical but just fit to childern hightes
          children: [
            Image.asset(
              'assets/images/dice-$diceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20,), // second method for padding
            TextButton(
                // onPressed: (){}), //anonymous function executable without name
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  ),
                ),
                child: const Text('Roll Dice'))
          ],
        );
  }
}