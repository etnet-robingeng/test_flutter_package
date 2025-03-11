import 'package:flutter/material.dart' show Color, Colors;

class FamilyColors {
  static const List<Color> bgColor = [Color(0xff18191d), Color(0xff18191d)];
  static const List<Color> bgColorLight = [Color(0xFFFFFFFF), Color(0xFFFFFFF)];

  static const Color primaryColor = Color(0xff4C86CD);
  static const Color secondaryColor = Color(0x554C86CD);
  static const Color lightTextColor = Color(0xffC9B885);
  static const Color darkTextColor = Color(0xff6CB0A6);
  static const Color selectBorderColor = Color(0xff6C7A86);

  static const Color norTextColors = Colors.red;
  static const Color darkTextColors = Colors.green;

  static Color getTextColor(int index) {
    switch (index % 3) {
      case 1:
        return lightTextColor;
      case 2:
        return darkTextColor;
      default:
        return primaryColor;
    }
  }
}

class ChartStyle {
  static const int lineChartCount = 300;

  static const double topPadding = 30.0;

  List<String>? dateTimeFormat;
}
