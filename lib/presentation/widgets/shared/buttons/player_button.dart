import 'package:boozy/config/theme/app_theme.dart';
import 'package:boozy/presentation/providers/players_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayersButton extends ConsumerWidget {
  const PlayersButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> players = ref.watch(playersProvider);

    void openPlayersList() {
      showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: const Text(
              'Players',
              style: TextStyle(
                  color: AppColors.purple, fontWeight: FontWeight.bold),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final player in players)
                  Text(
                    player,
                    style: const TextStyle(
                      fontSize: 18,
                      color: AppColors.pink,
                    ),
                  ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Close'),
                onPressed: () {
                  Navigator.of(dialogContext).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return IconButton(
      onPressed: openPlayersList,
      icon: const Icon(Icons.people_rounded),
    );
  }
}
