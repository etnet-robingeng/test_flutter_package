import 'package:app_family_materials/family_textStyle.dart';
import 'package:flutter/material.dart';

class FamilyThemes {
  // MaterialApp themes
  static ThemeData deepPurpleTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    textTheme: TextTheme(
      headlineLarge: FamilyTextStyle.LHeadlineRegular,
      headlineMedium: FamilyTextStyle.MHeadlineRegular,
      headlineSmall: FamilyTextStyle.SHeadlineRegular,
      bodyLarge: FamilyTextStyle.LBodyRegular,
      bodyMedium: FamilyTextStyle.MBodyRegular,
      bodySmall: FamilyTextStyle.SBodyRegular,
    ),
  );

  static ThemeData norTheme = ThemeData(
    primarySwatch: Colors.yellow,
    textTheme: TextTheme(
      headlineLarge: FamilyTextStyle.LHeadlineRegular,
      headlineMedium: FamilyTextStyle.MHeadlineRegular,
      headlineSmall: FamilyTextStyle.SHeadlineRegular,
      bodyLarge: FamilyTextStyle.LBodyRegular,
      bodyMedium: FamilyTextStyle.MBodyRegular,
      bodySmall: FamilyTextStyle.SBodyRegular,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink, // Same as light theme
      brightness: Brightness.dark,
    ),
    cardTheme: CardThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
    /* *
       Card(
          shape: Theme.of(context).cardTheme.shape,
          child: const SizedBox(...),
          ),
    * */
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: TextTheme(
      headlineLarge: FamilyTextStyle.LHeadlineRegular,
      headlineMedium: FamilyTextStyle.MHeadlineRegular,
      headlineSmall: FamilyTextStyle.SHeadlineRegular,
      bodyLarge: FamilyTextStyle.LBodyRegular,
      bodyMedium: FamilyTextStyle.MBodyRegular,
      bodySmall: FamilyTextStyle.SBodyRegular,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink, // Same as light theme
      brightness: Brightness.dark,
    ),
    cardTheme: CardThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
  );
}
