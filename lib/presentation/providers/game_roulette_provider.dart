import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_roulette_provider.g.dart';

@riverpod
class GameRouletteState extends _$GameRouletteState {
  @override
  bool build() => false;

  void spin() => state = true;

  void endSpin() => state = false;
}
