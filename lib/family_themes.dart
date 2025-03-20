import 'package:app_family_materials/family_textStyles.dart';
import 'package:app_family_materials/family_colors.dart';
import 'package:flutter/material.dart';

class FamilyThemes {
  static const TextTheme textTheme = TextTheme(
    headlineLarge: FamilyTextStyle.LHeadlineRegular,
    headlineMedium: FamilyTextStyle.MHeadlineRegular,
    headlineSmall: FamilyTextStyle.SHeadlineRegular,
    bodyLarge: FamilyTextStyle.LBodyRegular,
    bodyMedium: FamilyTextStyle.MBodyRegular,
    bodySmall: FamilyTextStyle.SBodyRegular,
  );

  // MaterialApp themes
  static ThemeData familyColors50Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary50,
      primary: FamilyColors.primary50,
      secondary: FamilyColors.secondary50,
      error: FamilyColors.error50,
    ),
  );

  static ThemeData familyColors100Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary100,
      primary: FamilyColors.primary100,
      secondary: FamilyColors.secondary100,
      error: FamilyColors.error100,
    ),
  );

  static ThemeData familyColors200Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary200,
      primary: FamilyColors.primary200,
      secondary: FamilyColors.secondary200,
      error: FamilyColors.error200,
    ),
  );

  static ThemeData familyColors300Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary300,
      primary: FamilyColors.primary300,
      secondary: FamilyColors.secondary300,
      error: FamilyColors.error300,
    ),
  );

  static ThemeData familyColors400Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary400,
      primary: FamilyColors.primary400,
      secondary: FamilyColors.secondary400,
      error: FamilyColors.error400,
    ),
  );

  static ThemeData familyColors500Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary500,
      primary: FamilyColors.primary500,
      secondary: FamilyColors.secondary500,
      error: FamilyColors.error500,
    ),
  );

  static ThemeData familyColors600Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary600,
      primary: FamilyColors.primary600,
      secondary: FamilyColors.secondary600,
      error: FamilyColors.error600,
    ),
  );

  static ThemeData familyColors700Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary700,
      primary: FamilyColors.primary700,
      secondary: FamilyColors.secondary700,
      error: FamilyColors.error700,
    ),
  );

  static ThemeData familyColors800Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary800,
      primary: FamilyColors.primary800,
      secondary: FamilyColors.secondary800,
      error: FamilyColors.error800,
    ),
  );

  static ThemeData familyColors900Theme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: FamilyColors.primary900,
      primary: FamilyColors.primary900,
      secondary: FamilyColors.secondary900,
      error: FamilyColors.error900,
    ),
  );

  static ThemeData deepPurpleTheme = ThemeData(
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  );

  static ThemeData norTheme = ThemeData(
    primarySwatch: Colors.yellow,
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink, // Same as light theme
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
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink, // Same as light theme
      brightness: Brightness.dark,
    ),
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    ),
  );
}
