import 'package:app_family_materials/family_textStyles.dart';
import 'package:app_family_materials/family_colors.dart';
import 'package:flutter/material.dart';

class FamilyThemes {
  ThemeData? theme;
  Color colorScheme;
  int index;
  Color primary;
  Color secondary;
  Color error;
  Color warning;
  Color success;
  Brightness brightness;

  FamilyThemes({
    this.theme,
    required this.colorScheme,
    required this.index,
    required this.primary,
    required this.secondary,
    required this.error,
    required this.warning,
    required this.success,
    this.brightness = Brightness.light,
  });

  static const TextTheme textTheme = TextTheme(
    headlineLarge: FamilyTextStyle.LHeadlineRegular,
    headlineMedium: FamilyTextStyle.MHeadlineRegular,
    headlineSmall: FamilyTextStyle.SHeadlineRegular,
    bodyLarge: FamilyTextStyle.LBodyRegular,
    bodyMedium: FamilyTextStyle.MBodyRegular,
    bodySmall: FamilyTextStyle.SBodyRegular,
  );

  static FamilyThemes getTheme(FamilyColorScheme colorScheme, FamilyColorsIndex index, Brightness brightness) {
    Color primaryColor;
    switch (colorScheme) {
      case FamilyColorScheme.system500:
        primaryColor = FamilyColors.systemColors[index.rawValue] ?? FamilyColors.system500;
        break;
      case FamilyColorScheme.violet500:
        primaryColor = FamilyColors.violetColors[index.rawValue] ?? FamilyColors.violet500;
    }

    return FamilyThemes(
      theme: ThemeData(
        textTheme: textTheme,
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: FamilyColors.secondaryColors[index.rawValue] ?? FamilyColors.secondary500,
          error: FamilyColors.errorColors[index.rawValue] ?? FamilyColors.error500,
          brightness: brightness,
        ),
        canvasColor: FamilyColors.neutral50,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        disabledColor: FamilyColors.neutral100,
        cardTheme: CardThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
      colorScheme: colorScheme.rawValue,
      index: index.rawValue,
      primary: primaryColor,
      secondary: FamilyColors.secondaryColors[index.rawValue] ?? FamilyColors.secondary500,
      error: FamilyColors.errorColors[index.rawValue] ?? FamilyColors.error500,
      warning: FamilyColors.warningColors[index.rawValue] ?? FamilyColors.warning500,
      success: FamilyColors.successColors[index.rawValue] ?? FamilyColors.success500,
    );
  }
}
