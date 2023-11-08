import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RestartGameButton extends StatelessWidget {
  const RestartGameButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.restart_alt_rounded),
      onPressed: () => context.push("/inscription"),
    );
  }
}
