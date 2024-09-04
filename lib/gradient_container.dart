import 'package:flutter/material.dart';
import 'package:first_app/text_with_style.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  // const GradientContainer.purple({super.key})
  //     : color1 = Colors.indigo,
  //       color2 = Colors.deepPurple;

  void rollDice() {
    //...
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/dice-2.png",
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              child: const Text("サイコロを振る"),
            )
          ],
        ),
      ),
    );
  }
}
