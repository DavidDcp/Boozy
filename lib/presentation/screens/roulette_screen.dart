import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:boozy/config/theme/app_theme.dart';
import 'package:boozy/presentation/providers/game_roulette_provider.dart';
import 'package:boozy/presentation/widgets/shared/buttons/app_button.dart';
import 'package:boozy/presentation/widgets/shared/buttons/player_button.dart';
import 'package:boozy/presentation/widgets/shared/buttons/restart_game_button.dart';
import 'package:boozy/presentation/widgets/shared/buttons/rules_button.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouletteScreen extends StatefulHookConsumerWidget {
  const RouletteScreen({super.key});

  static String name = 'roulette_screen';

  @override
  RouletteScreenState createState() => RouletteScreenState();
}

class RouletteScreenState extends ConsumerState<RouletteScreen>
    with SingleTickerProviderStateMixin {
  final ConfettiController confettiController = ConfettiController();
  late AnimationController animationController;
  late double spins;
  late Animation<double> animationSpin;

  double generateSpins() {
    return (Random().nextInt(10) + 5) + Random().nextDouble();
  }

  Animation<double> setAnimationSpin(double s) {
    return Tween<double>(begin: 0, end: s * 2).animate(
        CurvedAnimation(parent: animationController, curve: Curves.elasticOut));
  }

  void spin() {
    spins = generateSpins();
    animationSpin = setAnimationSpin(spins);
    ref.read(gameRouletteStateProvider.notifier).spin();
    setState(() {});
    confettiController.stop();
    animationController.forward(from: 0.0);
  }

  void endSpin() {
    confettiController.play();
    ref.read(gameRouletteStateProvider.notifier).endSpin();
  }

  @override
  void dispose() {
    animationController.dispose();
    confettiController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    spins = generateSpins();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    );

    animationSpin = Tween<double>(begin: 0, end: spins * 2).animate(
        CurvedAnimation(parent: animationController, curve: Curves.elasticOut));
  }

  @override
  Widget build(BuildContext context) {
    final isSpinning = ref.watch(gameRouletteStateProvider);

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        endSpin();
      }
    });

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.aqua,
                  AppColors.aqua,
                  AppColors.blue,
                  AppColors.purple,
                  AppColors.purple,
                ],
                stops: [0.0, 0.1, 0.5, 0.9, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.3),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInDown(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 1500),
                      child: _GameRoulette(
                        controller: animationController,
                        animationSpin: animationSpin,
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeInUp(
                      delay: const Duration(milliseconds: 1000),
                      child: AppButton(
                        onPressed: isSpinning ? null : spin,
                        backgroundColor: AppColors.aqua,
                        foregroundColor: AppColors.blue,
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            "Gira",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ConfettiWidget(
            confettiController: confettiController,
            blastDirectionality: BlastDirectionality.explosive,
            blastDirection: pi / 2,
            colors: const [
              AppColors.aqua,
              AppColors.blue,
              AppColors.purple,
              AppColors.pink,
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(top: 20),
        child: _FloatingAction(),
      ),
    );
  }
}

class _GameRoulette extends StatelessWidget {
  const _GameRoulette({
    required this.controller,
    required this.animationSpin,
  });

  final AnimationController controller;
  final Animation<double> animationSpin;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: animationSpin.value * pi,
              child: Image.asset(
                "assets/images/game/roulette.png",
                height: 280,
                width: 280,
              ),
            );
          },
        ),
        Transform.translate(
          offset: const Offset(62, -70),
          child: Image.asset(
            "assets/images/game/arrow.png",
            height: 150,
            width: 150,
          ),
        ),
      ],
    );
  }
}

class _FloatingAction extends StatelessWidget {
  const _FloatingAction();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: BounceInDown(
        delay: const Duration(milliseconds: 1000),
        duration: const Duration(milliseconds: 1500),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlayersButton(),
            SizedBox(width: 10),
            RestartGameButton(),
            SizedBox(width: 10),
            RulesButton(),
          ],
        ),
      ),
    );
  }
}
