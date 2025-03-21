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
            Text('Light Theme Styles', style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 16),
            _buildThemePreview('Family Colors 50', FamilyThemes.familyColors50Light),
            _buildThemePreview('Family Colors 100', FamilyThemes.familyColors100Light),
            _buildThemePreview('Family Colors 200', FamilyThemes.familyColors200Light),
            _buildThemePreview('Family Colors 300', FamilyThemes.familyColors300Light),
            _buildThemePreview('Family Colors 400', FamilyThemes.familyColors400Light),
            _buildThemePreview('Family Colors 500', FamilyThemes.familyColors500Light),
            _buildThemePreview('Family Colors 600', FamilyThemes.familyColors600Light),
            _buildThemePreview('Family Colors 700', FamilyThemes.familyColors700Light),
            _buildThemePreview('Family Colors 800', FamilyThemes.familyColors800Light),
            _buildThemePreview('Family Colors 900', FamilyThemes.familyColors900Light),
            
            _buildThemePreview('Deep Purple Theme', FamilyThemes.deepPurple),
            const SizedBox(height: 16),
            Text('Dark Theme Styles', style: Theme.of(context).textTheme. headlineLarge),
            const SizedBox(height: 16),
            _buildThemePreview('Family Colors 50', FamilyThemes.familyColors50Dark),
            _buildThemePreview('Family Colors 100', FamilyThemes.familyColors100Dark),
            _buildThemePreview('Family Colors 200', FamilyThemes.familyColors200Dark),
            _buildThemePreview('Family Colors 300', FamilyThemes.familyColors300Dark),
            _buildThemePreview('Family Colors 400', FamilyThemes.familyColors400Dark),
            _buildThemePreview('Family Colors 500', FamilyThemes.familyColors500Dark),
            _buildThemePreview('Family Colors 600', FamilyThemes.familyColors600Dark),
            _buildThemePreview('Family Colors 700', FamilyThemes.familyColors700Dark),
            _buildThemePreview('Family Colors 800', FamilyThemes.familyColors800Dark),
            _buildThemePreview('Family Colors 900', FamilyThemes.familyColors900Dark),

            _buildThemePreview('Nor Theme', FamilyThemes.nor),
            _buildThemePreview('Dark Theme', FamilyThemes.dark),
          ],
        ),
      ),
    );
  }

  Widget _buildThemePreview(String title, FamilyThemes theme) {
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
              Text(title, style: theme.theme.textTheme.headlineSmall),
              const SizedBox(height: 8),
              _buildColorRow('Primary', theme.theme.colorScheme.primary, theme.theme),
              const SizedBox(height: 4),
              _buildColorRow('Secondary', theme.theme.colorScheme.secondary, theme.theme),
              const SizedBox(height: 4), 
              _buildColorRow('Error', theme.theme.colorScheme.error, theme.theme),
              const SizedBox(height: 4),
              _buildColorRow('Warning', theme.warning, theme.theme),
              const SizedBox(height: 4),
              _buildColorRow('Success', theme.success, theme.theme),
              const SizedBox(height: 4),
              _buildColorRow('System', theme.system, theme.theme),
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
