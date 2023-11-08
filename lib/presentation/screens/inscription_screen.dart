import 'package:animate_do/animate_do.dart';
import 'package:boozy/config/theme/app_theme.dart';
import 'package:boozy/presentation/providers/players_provider.dart';
import 'package:boozy/presentation/widgets/inscription/inscription_text_field.dart';
import 'package:boozy/presentation/widgets/shared/buttons/app_button.dart';
import 'package:boozy/presentation/widgets/shared/buttons/rules_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InscriptionScreen extends ConsumerStatefulWidget {
  const InscriptionScreen({super.key});

  static String name = "inscription_screen";

  @override
  InscriptionScreenState createState() => InscriptionScreenState();
}

class InscriptionScreenState extends ConsumerState<InscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {};

    final List<InscriptionTextField> inscriptionTextFields = List.generate(
      8,
      (index) {
        final String fieldKey = "player$index";
        formValues[fieldKey] = "";

        return InscriptionTextField(
          width: 150,
          index: index + 1,
          onChanged: (player) {
            if (player.trim().isNotEmpty) {
              formValues[fieldKey] = player;
            }
          },
        );
      },
    );

    bool isFormValid(Map<String, String> map) {
      int counter = 0;

      for (final key in map.keys) {
        if (map[key] is String && map[key]!.isNotEmpty) counter++;
      }

      return counter >= 2;
    }

    SnackBar errorSnackBar = const SnackBar(
      closeIconColor: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      backgroundColor: AppColors.pink,
      showCloseIcon: true,
      content: Text(
        "Debes ingresar al menos 2 jugadores",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );

    void startGame() {
      if (isFormValid(formValues)) {
        final values =
            formValues.values.map((e) => e).where((e) => e.isNotEmpty).toList();

        ref.watch(playersProvider.notifier).setPlayers(values);

        formValues.forEach((key, value) {
          formValues[key] = "";
        });

        context.push("/roulette");

        formKey.currentState!.reset();
      } else {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(errorSnackBar);
      }
    }

    return Scaffold(
      body: Container(
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
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      "JUGADORES",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: inscriptionTextFields.sublist(
                            0,
                            inscriptionTextFields.length ~/ 2,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: inscriptionTextFields.sublist(
                            inscriptionTextFields.length ~/ 2,
                            inscriptionTextFields.length,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              JelloIn(
                delay: const Duration(milliseconds: 2000),
                duration: const Duration(milliseconds: 1500),
                child: AppButton(
                  onPressed: startGame,
                  backgroundColor: AppColors.aqua,
                  foregroundColor: AppColors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      "EMPEZAR",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: BounceInDown(
        delay: const Duration(milliseconds: 500),
        duration: const Duration(milliseconds: 1500),
        child: const _FloatingAction(),
      ),
    );
  }
}

class _FloatingAction extends StatelessWidget {
  const _FloatingAction();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInUp(
            delay: const Duration(milliseconds: 500),
            child: const RulesButton(),
          ),
        ],
      ),
    );
  }
}
