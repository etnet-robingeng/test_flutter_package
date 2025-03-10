import 'package:flutter/material.dart' show Color;

class FamilyColors {
  static const List<Color> bgColor = [Color(0xff18191d), Color(0xff18191d)];
  static const List<Color> bgColorLight = [Color(0xFFFFFFFF), Color(0xFFFFFFF)];

  static const Color kLineColor = Color(0xff4C86CD);
  static const Color lineFillColor = Color(0x554C86CD);
  static const Color ma5Color = Color(0xffC9B885);
  static const Color ma10Color = Color(0xff6CB0A6);

  static Color getMAColor(int index) {
    switch (index % 3) {
      case 1:
        return ma10Color;
      case 2:
        return ma10Color;
      default:
        return ma5Color;
    }
  }
}

class ChartStyle {
  static const int lineChartCount = 300;

  static const double topPadding = 30.0;

  List<String>? dateTimeFormat;
}
