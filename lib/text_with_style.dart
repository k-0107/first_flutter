import 'package:flutter/material.dart';

class TextWithStyle extends StatelessWidget {
  const TextWithStyle({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello World",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
