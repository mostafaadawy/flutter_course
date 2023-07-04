import 'package:flutter/material.dart';
//import './gradient_container.dart'; // it works but the next line is also works
import 'package:flutter_course/gradient_container.dart';
// ctrl+shif_r refactor to wrap widget
// alt_shift+f formate the code

// classes are data structure in memory data and functions
void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 96)),
    ),
  ));
}

