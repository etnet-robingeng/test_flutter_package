import 'package:flutter/material.dart';
import 'package:app_family_materials/family_themes.dart';
class ThemeController {
  static final ValueNotifier<ThemeData> themeNotifier = ValueNotifier(FamilyThemes.deepPurpleTheme);
  
  static void changeTheme(ThemeData newTheme) {
    themeNotifier.value = newTheme;
  }
} 