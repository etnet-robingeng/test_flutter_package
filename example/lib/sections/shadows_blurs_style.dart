import 'package:flutter/material.dart';
import 'dart:math';
import 'package:app_family_materials/family_shadows.dart';
import 'package:app_family_materials/family_colors.dart';
import 'theme_preview.dart' show ThemeAppBar;

class ShadowsBlursStylePage extends StatelessWidget {
  const ShadowsBlursStylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBar(title: 'Shadows & Blurs'),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: GridView.count(
            crossAxisCount: max(1, min(7, (MediaQuery.of(context).size.width / 180).floor())),
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            children: [
              _buildShadowCard(FamilyShadows.xs, 'xs'),
              _buildShadowCard(FamilyShadows.sm, 'sm'),
              _buildShadowCard(FamilyShadows.md, 'md'),
              _buildShadowCard(FamilyShadows.lg, 'lg'),
              _buildShadowCard(FamilyShadows.xl, 'xl'),
              _buildShadowCard(FamilyShadows.xl2, 'xl2'),
              _buildShadowCard(FamilyShadows.xl3, 'xl3'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShadowCard(List<BoxShadow> shadow, String name) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: FamilyColors.neutral0,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: FamilyColors.neutral50,
            width: 1,
          ),
          boxShadow: shadow,
        ),
        child: Center(
          child: Text(
            "shadow-$name",
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
