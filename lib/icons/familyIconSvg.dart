import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FamilyIconsSvg {
  static const String _basePath = 'assets/icons';
  static const String fontFamily = 'FamilyIcons';

  static const double _defaultSize = 24.0;

  static Widget get starSvg => _buildSvg('$_basePath/star.svg', size: 42);

  static Widget _buildSvg(String path, {double size = _defaultSize, Color? color}) {
    return SvgPicture.asset(
      path,
      package: 'app_family_materials',
      width: size,
      height: size,
      colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      placeholderBuilder: (context) => _buildPlaceholder(size),
    );
  }

  static Widget _buildPlaceholder(double size) => SizedBox(
    width: size,
    height: size,
    child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(Colors.grey[300]!)),
  );
}
