import 'package:flutter/material.dart';
import 'package:app_family_materials/family_themes.dart';
import '/controllers/theme_controller.dart';
class ThemeStylePage extends StatelessWidget {
  const ThemeStylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Styles'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildThemePreview('Family Colors 50', FamilyThemes.familyColors50Theme),
            _buildThemePreview('Family Colors 100', FamilyThemes.familyColors100Theme),
            _buildThemePreview('Family Colors 200', FamilyThemes.familyColors200Theme),
            _buildThemePreview('Family Colors 300', FamilyThemes.familyColors300Theme),
            _buildThemePreview('Family Colors 400', FamilyThemes.familyColors400Theme),
            _buildThemePreview('Family Colors 500', FamilyThemes.familyColors500Theme),
            _buildThemePreview('Family Colors 600', FamilyThemes.familyColors600Theme),
            _buildThemePreview('Family Colors 700', FamilyThemes.familyColors700Theme),
            _buildThemePreview('Family Colors 800', FamilyThemes.familyColors800Theme),
            _buildThemePreview('Family Colors 900', FamilyThemes.familyColors900Theme),
            _buildThemePreview('Deep Purple Theme', FamilyThemes.deepPurpleTheme),
            _buildThemePreview('Nor Theme', FamilyThemes.norTheme),
            _buildThemePreview('Dark Theme', FamilyThemes.darkTheme),
          ],
        ),
      ),
    );
  }

  Widget _buildThemePreview(String title, ThemeData theme) {
    return Card(
      child: InkWell(
        onTap: () {
          ThemeController.changeTheme(theme);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: theme.textTheme.headlineMedium),
              const SizedBox(height: 8),
              _buildColorRow('Primary', theme.colorScheme.primary, theme),
              const SizedBox(height: 4),
              _buildColorRow('Secondary', theme.colorScheme.secondary, theme),
              const SizedBox(height: 4), 
              _buildColorRow('Error', theme.colorScheme.error, theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorRow(String colorName, Color color, ThemeData theme) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 20,
          color: color,
          child: Center(
            child: Text(
              'Aa',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 40,
          height: 20,
          color: color,
          child: Center(
            child: Text(
              'Aa',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(colorName, style: theme.textTheme.bodyMedium),
      ],
    );
  }
}
