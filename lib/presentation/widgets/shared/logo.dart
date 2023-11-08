import 'package:boozy/config/theme/app_theme.dart';
import 'package:boozy/presentation/widgets/shared/titles/title_letter.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final bool isAnimated;
  final TitleLetterSizes size;

  const Logo({
    super.key,
    this.isAnimated = false,
    this.size = TitleLetterSizes.md,
  });

  @override
  Widget build(BuildContext context) {
    return isAnimated ? _AnimatedLogo(size: size) : _StaticLogo(size: size);
  }
}

class _StaticLogo extends StatelessWidget {
  final TitleLetterSizes size;

  const _StaticLogo({this.size = TitleLetterSizes.md});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleLetter('B', size: size, rotation: 350),
        TitleLetter('o', size: size, color: AppColors.pink),
        TitleLetter('o', size: size, color: AppColors.pink),
        TitleLetter('z', size: size, rotation: 10),
        TitleLetter('y', size: size),
      ],
    );
  }
}

class _AnimatedLogo extends StatelessWidget {
  final TitleLetterSizes size;

  const _AnimatedLogo({this.size = TitleLetterSizes.md});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleLetter(
          'B',
          size: size,
          rotation: 350,
          isAnimated: true,
          delay: const Duration(milliseconds: 1000),
        ),
        TitleLetter(
          'o',
          size: size,
          color: AppColors.pink,
          isAnimated: true,
          delay: const Duration(milliseconds: 1300),
          duration: const Duration(milliseconds: 1600),
        ),
        TitleLetter(
          'o',
          size: size,
          color: AppColors.pink,
          isAnimated: true,
          delay: const Duration(milliseconds: 1600),
          duration: const Duration(milliseconds: 1700),
        ),
        TitleLetter(
          'z',
          rotation: 10,
          size: size,
          isAnimated: true,
          delay: const Duration(milliseconds: 1900),
          duration: const Duration(milliseconds: 1800),
        ),
        TitleLetter(
          'y',
          size: size,
          isAnimated: true,
          delay: const Duration(milliseconds: 2200),
          duration: const Duration(milliseconds: 1900),
        ),
      ],
    );
  }
}
