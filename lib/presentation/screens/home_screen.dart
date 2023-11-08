import 'package:animate_do/animate_do.dart';
import 'package:boozy/config/theme/app_theme.dart';
import 'package:boozy/presentation/widgets/shared/logo.dart';
import 'package:boozy/presentation/widgets/shared/buttons/app_button.dart';
import 'package:boozy/presentation/widgets/shared/titles/title_letter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String name = "home_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: const _HomeBody(),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeIn(
            delay: const Duration(milliseconds: 4500),
            duration: const Duration(milliseconds: 1500),
            child: ShakeX(
              infinite: true,
              delay: const Duration(milliseconds: 500),
              duration: const Duration(seconds: 5),
              child: SizedBox(
                width: 300,
                child: Text(
                  "¡La Ruleta del Atrevimiento ha llegado! Gira y desafía los límites!",
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const Logo(isAnimated: true, size: TitleLetterSizes.lg),
          const SizedBox(height: 20),
          JelloIn(
            delay: const Duration(milliseconds: 3500),
            duration: const Duration(milliseconds: 1500),
            child: Pulse(
              duration: const Duration(seconds: 3),
              infinite: true,
              child: AppButton(
                onPressed: () {
                  context.push("/rules");
                },
                child: SizedBox(
                  width: 140,
                  child: Text(
                    "JUGAR",
                    style: GoogleFonts.montserrat(
                      color: AppColors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
