import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 223, 96, 234),
          Color.fromARGB(255, 141, 37, 37),
        ),
      ),
    ),
  );
}
