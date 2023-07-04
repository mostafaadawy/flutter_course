// nameing convension requires to replace capital by small chars and seperate by _
import 'package:flutter/material.dart';
// import 'package:flutter_course/styled_text.dart';
import 'package:flutter_course/dice_roller.dart';
const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key}); // reason it doesnt work cause the part that needs changes must be in statfull not in stateless class so we will divide this widget stateless and statfull into two parts

  // multiple constractur component/class
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

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
            child: DiceRoller(),
            // child: StyledText('Hi Darsh'),
            ));
  }
}
