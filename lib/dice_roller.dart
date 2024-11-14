import 'dart:math';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dice_provider.dart';

class DiceRoller extends ConsumerWidget {
  const DiceRoller({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentRollDice = ref.watch(diceNotifierProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {
            FirebaseAnalytics.instance.logEvent(name: 'ボタンが押されました');
          },
          child: const Text("ぼたん"),
        ),
        Image.asset(
          'assets/images/dice-$currentRollDice.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            ref.read(diceNotifierProvider.notifier).rollDice();
          },
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("サイコロを振る"),
        )
      ],
    );
  }
}
