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

  // MaterialApp light themes
  static FamilyThemes familyColors50Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary50,
        primary: FamilyColors.primary50,
        secondary: FamilyColors.secondary50,
        error: FamilyColors.error50,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning50,
    success: FamilyColors.success50,
    system: FamilyColors.system50,
  );

  static FamilyThemes familyColors100Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary100,
        primary: FamilyColors.primary100,
        secondary: FamilyColors.secondary100,
        error: FamilyColors.error100,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning100,
    success: FamilyColors.success100,
    system: FamilyColors.system100,
  );

  static FamilyThemes familyColors200Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary200,
        primary: FamilyColors.primary200,
        secondary: FamilyColors.secondary200,
        error: FamilyColors.error200,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning200,
    success: FamilyColors.success200,
    system: FamilyColors.system200,
  );

  static FamilyThemes familyColors300Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary300,
        primary: FamilyColors.primary300,
        secondary: FamilyColors.secondary300,
        error: FamilyColors.error300,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning300,
    success: FamilyColors.success300,
    system: FamilyColors.system300,
  );

  static FamilyThemes familyColors400Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary400,
        primary: FamilyColors.primary400,
        secondary: FamilyColors.secondary400,
        error: FamilyColors.error400,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning400,
    success: FamilyColors.success400,
    system: FamilyColors.system400,
  );

  static FamilyThemes familyColors500Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary500,
        primary: FamilyColors.primary500,
        secondary: FamilyColors.secondary500,
        error: FamilyColors.error500,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning500,
    success: FamilyColors.success500,
    system: FamilyColors.system500,
  );

  static FamilyThemes familyColors600Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary600,
        primary: FamilyColors.primary600,
        secondary: FamilyColors.secondary600,
        error: FamilyColors.error600,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning600,
    success: FamilyColors.success600,
    system: FamilyColors.system600,
  );

  static FamilyThemes familyColors700Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary700,
        primary: FamilyColors.primary700,
        secondary: FamilyColors.secondary700,
        error: FamilyColors.error700,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning700,
    success: FamilyColors.success700,
    system: FamilyColors.system700,
  );

  static FamilyThemes familyColors800Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary800,
        primary: FamilyColors.primary800,
        secondary: FamilyColors.secondary800,
        error: FamilyColors.error800,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning800,
    success: FamilyColors.success800,
    system: FamilyColors.system800,
  );

  static FamilyThemes familyColors900Light = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary900,
        primary: FamilyColors.primary900,
        secondary: FamilyColors.secondary900,
        error: FamilyColors.error900,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
    ),
    warning: FamilyColors.warning900,
    success: FamilyColors.success900,
    system: FamilyColors.system900,
  );

  static FamilyThemes deepPurple = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning500,
    success: FamilyColors.success500,
    system: FamilyColors.system500,
  );

  // MaterialApp dark themes
  static FamilyThemes familyColors50Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary50,
        primary: FamilyColors.primary50,
        secondary: FamilyColors.secondary50,
        error: FamilyColors.error50,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning50,
    success: FamilyColors.success50,
    system: FamilyColors.system50,
  );

  static FamilyThemes familyColors100Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary100,
        primary: FamilyColors.primary100,
        secondary: FamilyColors.secondary100,
        error: FamilyColors.error100,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning100,
    success: FamilyColors.success100,
    system: FamilyColors.system100,
  );

  static FamilyThemes familyColors200Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary200,
        primary: FamilyColors.primary200,
        secondary: FamilyColors.secondary200,
        error: FamilyColors.error200,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning200,
    success: FamilyColors.success200,
    system: FamilyColors.system200,
  );

  static FamilyThemes familyColors300Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary300,
        primary: FamilyColors.primary300,
        secondary: FamilyColors.secondary300,
        error: FamilyColors.error300,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning300,
    success: FamilyColors.success300,
    system: FamilyColors.system300,
  );

  static FamilyThemes familyColors400Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary400,
        primary: FamilyColors.primary400,
        secondary: FamilyColors.secondary400,
        error: FamilyColors.error400,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning400,
    success: FamilyColors.success400,
    system: FamilyColors.system400,
  );

  static FamilyThemes familyColors500Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary500,
        primary: FamilyColors.primary500,
        secondary: FamilyColors.secondary500,
        error: FamilyColors.error500,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning500,
    success: FamilyColors.success500,
    system: FamilyColors.system500,
  );

  static FamilyThemes familyColors600Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary600,
        primary: FamilyColors.primary600,
        secondary: FamilyColors.secondary600,
        error: FamilyColors.error600,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning600,
    success: FamilyColors.success600,
    system: FamilyColors.system600,
  );

  static FamilyThemes familyColors700Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary700,
        primary: FamilyColors.primary700,
        secondary: FamilyColors.secondary700,
        error: FamilyColors.error700,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning700,
    success: FamilyColors.success700,
    system: FamilyColors.system700,
  );

  static FamilyThemes familyColors800Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary800,
        primary: FamilyColors.primary800,
        secondary: FamilyColors.secondary800,
        error: FamilyColors.error800,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning800,
    success: FamilyColors.success800,
    system: FamilyColors.system800,
  );

  static FamilyThemes familyColors900Dark = FamilyThemes(
    theme: ThemeData(
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FamilyColors.primary900,
        primary: FamilyColors.primary900,
        secondary: FamilyColors.secondary900,
        error: FamilyColors.error900,
        brightness: Brightness.dark,
      ),
      canvasColor: FamilyColors.neutral50,
    ),
    warning: FamilyColors.warning900,
    success: FamilyColors.success900,
    system: FamilyColors.system900,
  );

  static FamilyThemes nor = FamilyThemes(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pink,
        brightness: Brightness.dark,
        primary: FamilyColors.primary500,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
      cardTheme: CardThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
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
        primary: FamilyColors.primary500,
      ),
      canvasColor: FamilyColors.neutral50,
      disabledColor: FamilyColors.neutral100,
      cardTheme: CardThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
    ),
    warning: FamilyColors.warning500,
    success: FamilyColors.success500,
    system: FamilyColors.system500,
  );
}
