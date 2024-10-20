import 'dart:math';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dice_provider.g.dart';

// アノテーションを使って自動生成されるプロバイダーを定義
@riverpod
class DiceNotifier extends _$DiceNotifier {
  final _randomizer = Random();

  @override
  int build() {
    return 2; // 初期値として2を返す
  }

  void rollDice() {
    state = _randomizer.nextInt(6) + 1;
  }
}
