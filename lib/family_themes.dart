import 'package:app_family_materials/family_colors.dart';
import 'package:app_family_materials/family_textStyle.dart';
import 'package:flutter/material.dart';

import 'family_sizes.dart';

class FamilyThemes {
  // MaterialApp themes
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      displayLarge: FamilyTextStyle.DisplaySemiBold,
      displayMedium: FamilyTextStyle.DisplayMedium,
      displaySmall: FamilyTextStyle.DisplayRegular,
      headlineLarge: FamilyTextStyle.HeadlineSemiBold,
      headlineMedium: FamilyTextStyle.HeadlineMedium,
      headlineSmall: FamilyTextStyle.HeadlineRegular,
      titleLarge: FamilyTextStyle.TitleSemiBold,
      titleMedium: FamilyTextStyle.TitleMedium,
      titleSmall: FamilyTextStyle.TitleRegular,
      bodyLarge: FamilyTextStyle.LBodyRegular,
      bodyMedium: FamilyTextStyle.MBodyRegular,
      bodySmall: FamilyTextStyle.SBodyRegular,
    )
  );

  static ThemeData norTheme = ThemeData(
    primarySwatch: Colors.yellow,
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: FamilySizesHeader.fontSizeL,
        fontWeight: FontWeight.bold,
        color: FamilyColors.primary700,
        fontFamily: 'PingFang TC',
      ),
      bodyMedium: TextStyle(
        fontSize: FamilySizesBody.fontSizeM,
        fontWeight: FontWeight.normal,
        color: FamilyColors.primary500,
        fontFamily: 'PingFang TC',
      ),
      displayLarge: TextStyle(fontSize: 96, fontWeight: FontWeight.w300, color: Colors.black),
      displayMedium: TextStyle(fontSize: 60, fontWeight: FontWeight.w400, color: Colors.black),
      displaySmall: TextStyle(fontSize: 48, fontWeight: FontWeight.w400, color: Colors.black),
      headlineMedium: TextStyle(fontSize: 34, fontWeight: FontWeight.w400, color: Colors.black),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black87),
      bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
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
      titleMedium: TextStyle(
        fontSize: FamilySizesHeader.fontSizeL,
        fontWeight: FontWeight.bold,
        color: FamilyColors.primary500,
        fontFamily: 'PingFang TC',
      ),
      bodyMedium: TextStyle(
        fontSize: FamilySizesBody.fontSizeM,
        fontWeight: FontWeight.normal,
        color: FamilyColors.primary700,
        fontFamily: 'PingFang TC',
      ),
      displayLarge: TextStyle(fontSize: 96, fontWeight: FontWeight.w300, color: Colors.black),
      displayMedium: TextStyle(fontSize: 60, fontWeight: FontWeight.w400, color: Colors.black),
      displaySmall: TextStyle(fontSize: 48, fontWeight: FontWeight.w400, color: Colors.black),
      headlineMedium: TextStyle(fontSize: 34, fontWeight: FontWeight.w400, color: Colors.black),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black87),
      bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink, // Same as light theme
      brightness: Brightness.dark,
    ),
    cardTheme: CardThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
  );
}
