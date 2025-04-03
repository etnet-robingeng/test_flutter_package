import 'package:app_family_materials/family_shadows.dart';
import 'package:app_family_materials/family_sizes.dart';
import 'package:flutter/material.dart';

import 'family_colors.dart';

class OpenAiWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final String lineOne;
  final String lineTwo;
  final Widget? icon;

  const OpenAiWidget({
    super.key,
    required this.onPressed,
    this.width = 320.0,
    this.height = 80.0,
    this.lineOne = '',
    this.lineTwo = '',
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(2),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: isDark ? FamilyGradient.darkGradientTextStyle : FamilyGradient.lightGradientTextStyle,
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: _buildContent(isDark),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(bool isDark) {
    LinearGradient themeColor = isDark ? FamilyGradient.darkGradientTextStyle : FamilyGradient.lightGradientTextStyle;
    Paint paint = Paint()..shader = themeColor.createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 0.0));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(lineOne, style: TextStyle(fontSize: FamilySizesHeadline.fontSizeL, foreground: paint)),
              Text(lineTwo, style: TextStyle(height: 1, fontSize: FamilySizesBody.fontSizeS, foreground: paint)),
            ],
          ),
        ),
        Container(padding: EdgeInsets.only(right: 20), child: icon),
      ],
    );
  }
}
