import 'package:flutter/material.dart';

// ctrl+shif_r refactor to wrap widget
// alt_shift+f formate the code

// classes are data structure in memory data and functions
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 45, 7, 96),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Darash',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
              ),
          )),
    ),
  ));
}
