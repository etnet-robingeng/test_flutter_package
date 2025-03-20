import 'package:flutter/material.dart';
import 'package:app_family_materials/family_themes.dart';
class ThemeController {
  static final ValueNotifier<FamilyThemes> themeNotifier = ValueNotifier(FamilyThemes.deepPurple);
  
  static void changeTheme(FamilyThemes newTheme) {
    themeNotifier.value = newTheme;
  }
} 