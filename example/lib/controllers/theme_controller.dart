import 'package:flutter/material.dart';
import 'package:app_family_materials/family_themes.dart';
import 'package:app_family_materials/family_colors.dart';
class ThemeController {
  static final ValueNotifier<FamilyThemes> themeNotifier = ValueNotifier(FamilyThemes.getTheme(FamilyColorScheme.violet500, FamilyColorsIndex.c500, Brightness.light));
  
  static void changeTheme(FamilyThemes newTheme) {
    themeNotifier.value = newTheme;
  }

  static FamilyThemes get currentTheme => themeNotifier.value;
} 