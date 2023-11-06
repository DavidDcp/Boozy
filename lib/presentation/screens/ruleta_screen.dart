import 'dart:math';
import 'package:flutter/material.dart';
/*
class RouletteScreen extends ConsumerStatefulWidget {
  const RouletteScreen({super.key});

  static String name = 'roulette_screen';

  @override
  RouletteScreenState createState() => RouletteScreenState();
}

class RouletteScreenState extends ConsumerState<RouletteScreen>
    with SingleTickerProviderStateMixin {
  late double spins;

  late AnimationController animationController;

  bool _isSpinning = false;

  @override
  void initState() {
    super.initState();
    spins = Random().nextInt(10) + Random().nextDouble();

    animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    void spin() {
      spins = (Random().nextInt(10) + 5) + Random().nextDouble();
      _isSpinning = true;
      setState(() {});
      animationController.forward();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ruleta"),
        actions: const [
          PlayersButton(),
          RestartGameButton(),
          RulesButton(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Roulette(
              spins: spins,
              manualTrigger: true,
              controller: (controller) => animationController = controller,
              duration: const Duration(seconds: 6),
              child: const Text("Ruleta"),
            ),
          ),
          const SizedBox(height: 20),
          AppButton(
            onPressed: _isSpinning ? null : spin,
            child: const Text("Gira"),
          )
        ],
      ),
    );
  }
}*/