// nameing convension requires to replace capital by small chars and seperate by _
import 'package:flutter/material.dart';
import 'package:flutter_course/styled_text.dart';
const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // multiple constractur component/class
  const GradientContainer.purple({super.key}):
  color1= Colors.deepPurple,
  color2= Colors.indigo;
  
  final Color color1;
  final Color color2;
  
  void rollDice(){
    //.....
  }

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
          child: Center(
            child:Column(children: [
                Image.asset('assets/images/dice-1.png',width: 200,),
                TextButton(
                  // onPressed: (){}), //anonymous function executable without name 
                  onPressed: rollDice,
                  child: const Text('Roll Dice'))
            ],)
            // child: StyledText('Hi Darsh'),
          )
          );
  }
}
