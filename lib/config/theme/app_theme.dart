import 'package:boozy/presentation/widgets/shared/titles/title_letter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: AppColors.purple,
        brightness: Brightness.dark,
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColors.pink),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.pink,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        snackBarTheme: const SnackBarThemeData(
          contentTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

  static TextStyle getLogoLetterStyle(
    Color color, [
    TitleLetterSizes size = TitleLetterSizes.lg,
  ]) =>
      GoogleFonts.righteous(
        fontSize: size == TitleLetterSizes.xs
            ? 22
            : size == TitleLetterSizes.sm
                ? 40
                : size == TitleLetterSizes.md
                    ? 70
                    : 100,
        color: color,
        fontWeight: FontWeight.w500,
      );
}

abstract final class AppColors {
  static const Color aqua = Color(0xFF02CECF);
  static const Color blue = Color(0xFF346DBD);
  static const Color pink = Color(0xFFFF48DD);
  static const Color purple = Color(0xFFA50097);
}
