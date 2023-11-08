import 'package:animate_do/animate_do.dart';
import 'package:boozy/config/extensions/app_extensions.dart';
import 'package:boozy/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

enum TitleLetterSizes { xs, sm, md, lg }

class TitleLetter extends StatelessWidget {
  final String letter;
  final double rotation;
  final Offset offset;
  final Color color;
  final bool isAnimated;
  final Duration duration;
  final Duration delay;
  final TitleLetterSizes size;

  const TitleLetter(
    this.letter, {
    super.key,
    this.rotation = 0,
    this.color = Colors.white,
    this.isAnimated = false,
    this.duration = const Duration(milliseconds: 1500),
    this.delay = const Duration(milliseconds: 0),
    this.size = TitleLetterSizes.md,
    this.offset = const Offset(0, 0),
  });

  @override
  Widget build(BuildContext context) {
    return isAnimated
        ? FadeInUp(
            duration: duration,
            delay: delay,
            child: _LetterBase(
              offset: offset,
              rotation: rotation,
              letter: letter,
              color: color,
              size: size,
            ),
          )
        : _LetterBase(
            offset: offset,
            rotation: rotation,
            letter: letter,
            color: color,
            size: size,
          );
  }
}

class _LetterBase extends StatelessWidget {
  const _LetterBase({
    required this.offset,
    required this.rotation,
    required this.letter,
    required this.color,
    required this.size,
  });

  final Offset offset;
  final double rotation;
  final String letter;
  final Color color;
  final TitleLetterSizes size;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Transform.rotate(
        angle: rotation.toRad(),
        child: Text(
          letter,
          style: AppTheme.getLogoLetterStyle(color, size),
        ),
      ),
    );
  }
}
