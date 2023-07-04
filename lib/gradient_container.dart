// nameing convension requires to replace capital by small chars and seperate by _
import 'package:flutter/material.dart';
import 'package:flutter_course/styled_text.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key}); // reason it doesnt work cause the part that needs changes must be in statfull not in stateless class so we will divide this widget stateless and statfull into two parts

  // multiple constractur component/class
   GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  var diceImagePath='assets/images/dice-2.png';
  void rollDice() {
    diceImagePath='assets/images/dice-4.png';
    print('changing image');
  }

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
            begin: beginAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize
              .min, // allow not to take all vertical but just fit to childern hightes
          children: [
            Image.asset(
              diceImagePath,
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
        )
            // child: StyledText('Hi Darsh'),
            ));
  }
}
