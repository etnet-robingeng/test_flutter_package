import 'package:flutter/material.dart';
import 'dart:math';
import 'package:app_family_materials/family_colors.dart';
import '../controllers/theme_controller.dart';
import 'package:app_family_materials/family_themes.dart';

class ThemePreview extends StatelessWidget {
  const ThemePreview({super.key});

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: ThemeAppBar(title: 'Theme Preview'),
      body: ColorSchemeView(colorScheme: Theme.of(context).colorScheme),
    );
  }
}

class ThemeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const ThemeAppBar({super.key, this.title = '', this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Theme.of(context).colorScheme.primary,
      actions: [_settingsButton(context)],
    );
  }

  Widget _settingsButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings),
      onPressed: () {
        if (scaffoldKey != null) {
          scaffoldKey?.currentState?.showBottomSheet(
            enableDrag: true,
            (context) => const SettingsModal(),
          );
        } else {
          showModalBottomSheet(
            context: context,
            builder: (context) => const SettingsModal(),
          );
        }
      },
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ColorSchemeView extends StatelessWidget {
  const ColorSchemeView({super.key, required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    final List<ColorGroup> colorGroups = [
      ColorGroup(
        children: <ColorChip>[
          ColorChip('primary', colorScheme.primary, colorScheme.onPrimary),
          ColorChip('onPrimary', colorScheme.onPrimary, colorScheme.primary),
          ColorChip(
            'primaryContainer',
            colorScheme.primaryContainer,
            colorScheme.onPrimaryContainer,
          ),
          ColorChip(
            'onPrimaryContainer',
            colorScheme.onPrimaryContainer,
            colorScheme.primaryContainer,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip(
            'primaryFixed',
            colorScheme.primaryFixed,
            colorScheme.onPrimaryFixed,
          ),
          ColorChip(
            'onPrimaryFixed',
            colorScheme.onPrimaryFixed,
            colorScheme.primaryFixed,
          ),
          ColorChip(
            'primaryFixedDim',
            colorScheme.primaryFixedDim,
            colorScheme.onPrimaryFixedVariant,
          ),
          ColorChip(
            'onPrimaryFixedVariant',
            colorScheme.onPrimaryFixedVariant,
            colorScheme.primaryFixedDim,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip(
            'secondary',
            colorScheme.secondary,
            colorScheme.onSecondary,
          ),
          ColorChip(
            'onSecondary',
            colorScheme.onSecondary,
            colorScheme.secondary,
          ),
          ColorChip(
            'secondaryContainer',
            colorScheme.secondaryContainer,
            colorScheme.onSecondaryContainer,
          ),
          ColorChip(
            'onSecondaryContainer',
            colorScheme.onSecondaryContainer,
            colorScheme.secondaryContainer,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip(
            'secondaryFixed',
            colorScheme.secondaryFixed,
            colorScheme.onSecondaryFixed,
          ),
          ColorChip(
            'onSecondaryFixed',
            colorScheme.onSecondaryFixed,
            colorScheme.secondaryFixed,
          ),
          ColorChip(
            'secondaryFixedDim',
            colorScheme.secondaryFixedDim,
            colorScheme.onSecondaryFixedVariant,
          ),
          ColorChip(
            'onSecondaryFixedVariant',
            colorScheme.onSecondaryFixedVariant,
            colorScheme.secondaryFixedDim,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip('tertiary', colorScheme.tertiary, colorScheme.onTertiary),
          ColorChip('onTertiary', colorScheme.onTertiary, colorScheme.tertiary),
          ColorChip(
            'tertiaryContainer',
            colorScheme.tertiaryContainer,
            colorScheme.onTertiaryContainer,
          ),
          ColorChip(
            'onTertiaryContainer',
            colorScheme.onTertiaryContainer,
            colorScheme.tertiaryContainer,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip(
            'tertiaryFixed',
            colorScheme.tertiaryFixed,
            colorScheme.onTertiaryFixed,
          ),
          ColorChip(
            'onTertiaryFixed',
            colorScheme.onTertiaryFixed,
            colorScheme.tertiaryFixed,
          ),
          ColorChip(
            'tertiaryFixedDim',
            colorScheme.tertiaryFixedDim,
            colorScheme.onTertiaryFixedVariant,
          ),
          ColorChip(
            'onTertiaryFixedVariant',
            colorScheme.onTertiaryFixedVariant,
            colorScheme.tertiaryFixedDim,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip('error', colorScheme.error, colorScheme.onError),
          ColorChip('onError', colorScheme.onError, colorScheme.error),
          ColorChip(
            'errorContainer',
            colorScheme.errorContainer,
            colorScheme.onErrorContainer,
          ),
          ColorChip(
            'onErrorContainer',
            colorScheme.onErrorContainer,
            colorScheme.errorContainer,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip(
            'surfaceDim',
            colorScheme.surfaceDim,
            colorScheme.onSurface,
          ),
          ColorChip('surface', colorScheme.surface, colorScheme.onSurface),
          ColorChip(
            'surfaceBright',
            colorScheme.surfaceBright,
            colorScheme.onSurface,
          ),
          ColorChip(
            'surfaceContainerLowest',
            colorScheme.surfaceContainerLowest,
            colorScheme.onSurface,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip(
            'surfaceContainerLow',
            colorScheme.surfaceContainerLow,
            colorScheme.onSurface,
          ),
          ColorChip(
            'surfaceContainer',
            colorScheme.surfaceContainer,
            colorScheme.onSurface,
          ),
          ColorChip(
            'surfaceContainerHigh',
            colorScheme.surfaceContainerHigh,
            colorScheme.onSurface,
          ),
          ColorChip(
            'surfaceContainerHighest',
            colorScheme.surfaceContainerHighest,
            colorScheme.onSurface,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip('onSurface', colorScheme.onSurface, colorScheme.surface),
          ColorChip(
            'onSurfaceVariant',
            colorScheme.onSurfaceVariant,
            colorScheme.surfaceContainerHighest,
          ),
          ColorChip(
            'onInverseSurface',
            colorScheme.onInverseSurface,
            colorScheme.inverseSurface,
          ),
          ColorChip(
            'inversePrimary',
            colorScheme.inversePrimary,
            colorScheme.primary,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip('outline', colorScheme.outline, null),
          ColorChip('shadow', colorScheme.shadow, null),
          ColorChip(
            'inverseSurface',
            colorScheme.inverseSurface,
            colorScheme.onInverseSurface,
          ),
        ],
      ),
      ColorGroup(
        children: <ColorChip>[
          ColorChip('warning', ThemeController.currentTheme.warning, null),
          ColorChip('success', ThemeController.currentTheme.success, null),
        ],
      ),
    ];
    int crossAxisCount = max(
      1,
      min(11, (MediaQuery.of(context).size.width / 230).floor()),
    );

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: 216,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      padding: const EdgeInsets.all(10),
      itemCount: colorGroups.length, // Assuming colorGroups is defined
      itemBuilder: (context, index) {
        return colorGroups[index]; // Adjust this based on your data structure
      },
    );
  }
}

class ColorGroup extends StatelessWidget {
  const ColorGroup({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(children: children),
      ),
    );
  }
}

class ColorChip extends StatelessWidget {
  const ColorChip(this.label, this.color, this.onColor, {super.key});

  final Color color;
  final Color? onColor;
  final String label;

  static Color contrastColor(Color color) {
    final Brightness brightness = ThemeData.estimateBrightnessForColor(color);
    return brightness == Brightness.dark ? Colors.white : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    final Color labelColor = onColor ?? contrastColor(color);
    return ColoredBox(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Expanded>[
            Expanded(child: Text(label, style: TextStyle(color: labelColor))),
          ],
        ),
      ),
    );
  }
}

class SettingsModal extends StatefulWidget {
  const SettingsModal({super.key});

  @override
  State<SettingsModal> createState() => _SettingsModalState();
}

class _SettingsModalState extends State<SettingsModal> {
  Brightness selectedBrightness = ThemeController.currentTheme.brightness;
  Color selectedColor = ThemeController.currentTheme.colorScheme;
  Color selectedSectionColor = ThemeController.currentTheme.primary;
  int selectedIndex = ThemeController.currentTheme.index;
  List<Color> colors = FamilyColorScheme.values.map((e) => e.rawValue).toList();
  List<int> colorIndices = FamilyColorsIndex.values.map((e) => e.rawValue).toList();

  @override
  Widget build(BuildContext context) {  
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 300,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Text(
                    'Settings',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('Brightness: '),
                Switch(
                  value: selectedBrightness == Brightness.light,
                  onChanged: (bool value) {
                    setState(() {
                      selectedBrightness = value ? Brightness.light : Brightness.dark;
                      _changeTheme();
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      _buildColorButton(FamilyColors.system500),
                      const SizedBox(height: 10),
                      _buildColorButton(FamilyColors.violet500),
                    ],
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: min(524, MediaQuery.of(context).size.width * 0.7),
                    height: 180,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      itemCount: colorIndices.length,
                      separatorBuilder: (context, index) => const SizedBox(height: 15),
                      itemBuilder: (context, index) {
                        Color color;
                        if (selectedColor == FamilyColors.system500) {
                          color = FamilyColors.systemColors[colorIndices[index]] ?? FamilyColors.system500;
                        } else {
                          color = FamilyColors.violetColors[colorIndices[index]] ?? FamilyColors.violet500;
                        }

                        return _buildColorSectionButton(color, index);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorButton(Color color) {
    bool isSelected = selectedColor == color;

    return AnimatedScale(
      duration: Duration(milliseconds: 200),
      scale: isSelected ? 1.1 : 1.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(0),
          backgroundColor: isSelected ? color : Colors.transparent,
          side: BorderSide(color: color, width: 5),
          elevation: isSelected ? 16 : 0,
        ),
        onPressed: () {
          setState(() {
            selectedColor = color;
            selectedSectionColor = color;
            selectedIndex = 500;
            _changeTheme();
          });
        },
        child: SizedBox(width: 30, height: 30),
      ),
    );
  }

  Widget _buildColorSectionButton(Color color, int index) {
    bool isSelected = selectedSectionColor == color;

    return AnimatedScale(
      duration: Duration(milliseconds: 200),
      scale: isSelected ? 1.1 : 1.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(0),
          backgroundColor: color,
          elevation: isSelected ? 16 : 0,
        ),
        onPressed: () {
          setState(() {
            selectedSectionColor = color;
            selectedIndex = colorIndices[index];
            _changeTheme();
          });
        },
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    colorIndices[index].toString(),
                    style: TextStyle(color: color.computeLuminance() < 0.5 ? Colors.white : Colors.black),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    '#${color.toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase()}',
                    style: TextStyle(color: color.computeLuminance() < 0.5 ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _changeTheme() {
    ThemeController.changeTheme(FamilyThemes.getTheme(FamilyColorScheme.fromValue(selectedColor), FamilyColorsIndex.fromValue(selectedIndex), selectedBrightness));
  }
}
