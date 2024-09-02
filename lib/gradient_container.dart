import 'package:flutter/material.dart';
import 'package:first_app/text_with_style.dart';

var startAlignment = Alignment.topRight;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Colors.deepPurple,
            Color.fromARGB(255, 146, 57, 148),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: TextWithStyle(),
      ),
    );
  }
}
