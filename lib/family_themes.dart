import 'package:app_family_materials/family_textStyles.dart';
import 'package:app_family_materials/family_colors.dart';
import 'package:flutter/material.dart';

class FamilyThemes {
  ThemeData theme;
  Color warning;
  Color success;
  Color system;

  FamilyThemes({required this.theme, required this.warning, required this.success, required this.system});

  static const TextTheme textTheme = TextTheme(
    headlineLarge: FamilyTextStyle.LHeadlineRegular,
    headlineMedium: FamilyTextStyle.MHeadlineRegular,
    headlineSmall: FamilyTextStyle.SHeadlineRegular,
    bodyLarge: FamilyTextStyle.LBodyRegular,
    bodyMedium: FamilyTextStyle.MBodyRegular,
    bodySmall: FamilyTextStyle.SBodyRegular,
  );

  // MaterialApp themes
  static FamilyThemes familyColors50 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary50,
        primary: FamilyColors.primary50,
        secondary: FamilyColors.secondary50,
        error: FamilyColors.error50,
      ),
    ),
    warning: FamilyColors.warning50,
    success: FamilyColors.success50,
    system: FamilyColors.system50,
  );

  static FamilyThemes familyColors100 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary100,
        primary: FamilyColors.primary100,
        secondary: FamilyColors.secondary100,
        error: FamilyColors.error100,
      ),
    ),
    warning: FamilyColors.warning100,
    success: FamilyColors.success100,
    system: FamilyColors.system100,
  );

  static FamilyThemes familyColors200 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary200,
        primary: FamilyColors.primary200,
        secondary: FamilyColors.secondary200,
        error: FamilyColors.error200,
      ),
    ),
    warning: FamilyColors.warning200,
    success: FamilyColors.success200,
    system: FamilyColors.system200,
  );

  static FamilyThemes familyColors300 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary300,
        primary: FamilyColors.primary300,
        secondary: FamilyColors.secondary300,
        error: FamilyColors.error300,
      ),
    ),
    warning: FamilyColors.warning300,
    success: FamilyColors.success300,
    system: FamilyColors.system300,
  );

  static FamilyThemes familyColors400 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary400,
        primary: FamilyColors.primary400,
        secondary: FamilyColors.secondary400,
        error: FamilyColors.error400,
      ),
    ),
    warning: FamilyColors.warning400,
    success: FamilyColors.success400,
    system: FamilyColors.system400,
  );

  static FamilyThemes familyColors500 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary500,
        primary: FamilyColors.primary500,
        secondary: FamilyColors.secondary500,
        error: FamilyColors.error500,
      ),
    ),
    warning: FamilyColors.warning500,
    success: FamilyColors.success500,
    system: FamilyColors.system500,
  );

  static FamilyThemes familyColors600 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary600,
        primary: FamilyColors.primary600,
        secondary: FamilyColors.secondary600,
        error: FamilyColors.error600,
      ),
    ),
    warning: FamilyColors.warning600,
    success: FamilyColors.success600,
    system: FamilyColors.system600,
  );

  static FamilyThemes familyColors700 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary700,
        primary: FamilyColors.primary700,
        secondary: FamilyColors.secondary700,
        error: FamilyColors.error700,
      ),
    ),
    warning: FamilyColors.warning700,
    success: FamilyColors.success700,
    system: FamilyColors.system700,
  );

  static FamilyThemes familyColors800 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary800,
        primary: FamilyColors.primary800,
        secondary: FamilyColors.secondary800,
        error: FamilyColors.error800,
      ),
    ),
    warning: FamilyColors.warning800,
    success: FamilyColors.success800,
    system: FamilyColors.system800,
  );

  static FamilyThemes familyColors900 = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary900,
        primary: FamilyColors.primary900,
        secondary: FamilyColors.secondary900,
        error: FamilyColors.error900,
      ),
    ),
    warning: FamilyColors.warning900,
    success: FamilyColors.success900,
    system: FamilyColors.system900,
  );

  static FamilyThemes deepPurple = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
    warning: FamilyColors.warning500,
    success: FamilyColors.success500,
    system: FamilyColors.system500,
  );

  static FamilyThemes nor = FamilyThemes(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pink,
        brightness: Brightness.dark,
      ),
      cardTheme: CardThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      ),
      /* *
       Card(
          shape: Theme.of(context).cardTheme.shape,
          child: const SizedBox(...),
          ),
    * */
    ),
    warning: FamilyColors.warning500,
    success: FamilyColors.success500,
    system: FamilyColors.system500,
  );

  static FamilyThemes dark = FamilyThemes(
    theme: ThemeData(
      primarySwatch: Colors.grey,
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pink,
        brightness: Brightness.dark,
        ),
      cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    ),
    ),
    warning: FamilyColors.warning500,
    success: FamilyColors.success500,
    system: FamilyColors.system500,
  );
}
