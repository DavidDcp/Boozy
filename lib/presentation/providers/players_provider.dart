import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'players_provider.g.dart';

@riverpod
class Players extends _$Players {
  @override
  List<String> build() => [];

  void addPlayer(String player) {
    state = [...state, player];
  }

  void setPlayers(List<String> players) {
    state = players;
  }

  void removePlayer(String player) {
    state = state.where((element) => element != player).toList();
  }
}
