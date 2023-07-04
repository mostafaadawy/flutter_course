// nameing convension requires to replace capital by small chars and seperate by _
import 'package:flutter/material.dart';
import 'package:flutter_course/styled_text.dart';
const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  @override
  Widget build(context){
      return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color1, color2,
              ],
              begin: beginAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: StyledText('Hi Darsh'),
          )
          );
  }
}
