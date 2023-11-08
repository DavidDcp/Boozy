import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RulesButton extends StatelessWidget {
  const RulesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.push('/rules'),
      icon: const Icon(Icons.list_alt_rounded),
    );
  }
}
