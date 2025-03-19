import 'package:flutter/material.dart' show Color;

class FamilyColors {
  static const Color primary50 = Color(0xffebf1fe);
  static const Color primary100 = Color(0xffc1d5fc);
  static const Color primary200 = Color(0xffa3c0fb);
  static const Color primary300 = Color(0xff79a3f9);
  static const Color primary400 = Color(0xff5f91f8);
  static const Color primary500 = Color(0xff3776f6);
  static const Color primary600 = Color(0xff326be0);
  static const Color primary700 = Color(0xff2754af);
  static const Color primary800 = Color(0xff1e4187);
  static const Color primary900 = Color(0xff173267);

  static const Color secondary50 = Color(0xffeffafd);
  static const Color secondary100 = Color(0xffcdeffa);
  static const Color secondary200 = Color(0xffb5e7f8);
  static const Color secondary300 = Color(0xff93dbf4);
  static const Color secondary400 = Color(0xff7ed5f2);
  static const Color secondary500 = Color(0xff5ecaef);
  static const Color secondary600 = Color(0xff56b8d9);
  static const Color secondary700 = Color(0xff438faa);
  static const Color secondary800 = Color(0xff346f83);
  static const Color secondary900 = Color(0xff275564);

  static const Color error50 = Color(0xfffeeded);
  static const Color error100 = Color(0xfffcc8c8);
  static const Color error200 = Color(0xfffbadad);
  static const Color error300 = Color(0xfff98787);
  static const Color error400 = Color(0xfff87070);
  static const Color error500 = Color(0xfff64c4c);
  static const Color error600 = Color(0xffe04545);
  static const Color error700 = Color(0xffaf3636);
  static const Color error800 = Color(0xff872a2a);
  static const Color error900 = Color(0xff672020);

  static const Color warning50 = Color(0xfffff7e7);
  static const Color warning100 = Color(0xffffe6b4);
  static const Color warning200 = Color(0xffffd990);
  static const Color warning300 = Color(0xffffc85d);
  static const Color warning400 = Color(0xffffbd3d);
  static const Color warning500 = Color(0xffffad0d);
  static const Color warning600 = Color(0xffe89d0c);
  static const Color warning700 = Color(0xffb57b09);
  static const Color warning800 = Color(0xff8c5f07);
  static const Color warning900 = Color(0xff6b4905);

  static const Color success50 = Color(0xffedf8f2);
  static const Color success100 = Color(0xffc6e9d8);
  static const Color success200 = Color(0xffaadec5);
  static const Color success300 = Color(0xff84cfab);
  static const Color success400 = Color(0xff6cc69a);
  static const Color success500 = Color(0xff47b881);
  static const Color success600 = Color(0xff41a775);
  static const Color success700 = Color(0xff32835c);
  static const Color success800 = Color(0xff276547);
  static const Color success900 = Color(0xff1e4d36);

  static const Color neutral0 = Color(0xffffffff);
  static const Color neutral10 = Color(0xfffcfcfc);
  static const Color neutral20 = Color(0xfff8f8f9);
  static const Color neutral30 = Color(0xfff1f2f2);
  static const Color neutral40 = Color(0xffe9e9eb);
  static const Color neutral50 = Color(0xffd4d5d8);
  static const Color neutral60 = Color(0xffcacbce);
  static const Color neutral70 = Color(0xffc1c3c6);
  static const Color neutral80 = Color(0xffb7b9bd);
  static const Color neutral90 = Color(0xffacafb4);
  static const Color neutral100 = Color(0xffa2a5aa);
  static const Color neutral200 = Color(0xff989ba1);
  static const Color neutral300 = Color(0xff8d9197);
  static const Color neutral400 = Color(0xff858890);
  static const Color neutral500 = Color(0xff7b7e86);
  static const Color neutral600 = Color(0xff72767e);
  static const Color neutral700 = Color(0xff666a73);
  static const Color neutral800 = Color(0xff5c606a);
  static const Color neutral900 = Color(0xff535862);
  static const Color neutral1000 = Color(0xff000000);

  static final Map<int, Color> primaryColors = {
    50: primary50,
    100: primary100,
    200: primary200,
    300: primary300,
    400: primary400,
    500: primary500,
    600: primary600,
    700: primary700,
    800: primary800,
    900: primary900,
  };

  static Color getPrimaryColor(int index) {
    if (primaryColors.containsKey(index)) {
      return primaryColors[index]!;
    } else {
      throw ArgumentError(
        'Invalid index: $index. Supported values are 50, 100, 200, 300, 400, 500, 600, 700, 800, 900.',
      );
    }
  }

  static final Map<int, Color> secondaryColors = {
    50: secondary50,
    100: secondary100,
    200: secondary200,
    300: secondary300,
    400: secondary400,
    500: secondary500,
    600: secondary600,
    700: secondary700,
    800: secondary800,
    900: secondary900,
  };

  static Color getSecondaryColor(int index) {
    if (secondaryColors.containsKey(index)) {
      return secondaryColors[index]!;
    } else {
      throw ArgumentError(
        'Invalid index: $index. Supported values are 50, 100, 200, 300, 400, 500, 600, 700, 800, 900.',
      );
    }
  }
}

class ChartStyle {
  static const int lineChartCount = 300;

  static const double topPadding = 30.0;

  List<String>? dateTimeFormat;
}
