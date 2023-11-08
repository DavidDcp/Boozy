import 'package:animate_do/animate_do.dart';
import 'package:boozy/config/theme/app_theme.dart';
import 'package:boozy/infrastructure/models/rule_local.dart';
import 'package:boozy/presentation/providers/rules_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RulesScreen extends ConsumerStatefulWidget {
  const RulesScreen({super.key});

  static String name = "rules_screen";

  @override
  RulesScreenState createState() => RulesScreenState();
}

class RulesScreenState extends ConsumerState<RulesScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisibleFloatingActionButton = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 50) {
        _isVisibleFloatingActionButton = true;
      } else {
        _isVisibleFloatingActionButton = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final rules = ref.watch(rulesProvider);

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
        child: SafeArea(
          top: true,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BounceInDown(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 1500),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 60, horizontal: 100),
                    child: Image.asset('assets/images/rules/title.png'),
                  ),
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: rules.length,
                  itemBuilder: (context, index) {
                    final rule = rules[index];

                    return index.isEven
                        ? FadeInLeft(
                            delay: const Duration(milliseconds: 500),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: _RuleCard(rule: rule),
                            ),
                          )
                        : FadeInRight(
                            delay: const Duration(milliseconds: 500),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: _RuleCard(rule: rule),
                            ),
                          );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                ),
                const SizedBox(height: 85),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FadeInRight(
        animate: _isVisibleFloatingActionButton,
        child: ShakeX(
          infinite: true,
          delay: const Duration(milliseconds: 1000),
          duration: const Duration(seconds: 5),
          child: FloatingActionButton(
            onPressed: () => context.push('/inscription'),
            child: const Icon(Icons.arrow_forward_rounded),
          ),
        ),
      ),
    );
  }
}

class _RuleCard extends StatelessWidget {
  const _RuleCard({required this.rule});

  final RuleLocal rule;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          rule.svgUrl != ""
              ? SvgPicture.asset(
                  rule.svgUrl,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                  width: 60,
                  height: 60,
                )
              : const SizedBox(),
          rule.svgUrl != "" ? const SizedBox(width: 20) : const SizedBox(),
          Flexible(
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: '${rule.title}: ',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  TextSpan(
                    text: rule.description,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
