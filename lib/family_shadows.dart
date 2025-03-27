import 'package:flutter/painting.dart';
import 'family_colors.dart';

class FamilyShadows {
  static const List<BoxShadow> xs = [
    BoxShadow(color: FamilyColors.shadowA5, blurRadius: 2, spreadRadius: 0, offset: Offset(0, 1)),
  ];

  static const List<BoxShadow> sm = [
    BoxShadow(color: FamilyColors.shadowA5, blurRadius: 2, spreadRadius: 0, offset: Offset(0, 1)),
    BoxShadow(color: FamilyColors.shadowA10, blurRadius: 3, spreadRadius: 0, offset: Offset(0, 1)),
  ];

  static const List<BoxShadow> md = [
    BoxShadow(color: FamilyColors.shadowA6, blurRadius: 4, spreadRadius: -2, offset: Offset(0, 2)),
    BoxShadow(color: FamilyColors.shadowA10, blurRadius: 8, spreadRadius: -2, offset: Offset(0, 4)),
  ];

  static const List<BoxShadow> lg = [
    BoxShadow(color: FamilyColors.shadowA3, blurRadius: 6, spreadRadius: -2, offset: Offset(0, 4)),
    BoxShadow(color: FamilyColors.shadowA8, blurRadius: 16, spreadRadius: -4, offset: Offset(0, 12)),
  ];

  static const List<BoxShadow> xl = [
    BoxShadow(color: FamilyColors.shadowA3, blurRadius: 8, spreadRadius: -4, offset: Offset(0, 8)),
    BoxShadow(color: FamilyColors.shadowA8, blurRadius: 24, spreadRadius: -4, offset: Offset(0, 20)),
  ];

  static const List<BoxShadow> xl2 = [
    BoxShadow(color: FamilyColors.shadowA18, blurRadius: 48, spreadRadius: -12, offset: Offset(0, 24)),
  ];

  static const List<BoxShadow> xl3 = [
    BoxShadow(color: FamilyColors.shadowA14, blurRadius: 64, spreadRadius: -12, offset: Offset(0, 32)),
  ];
}

class FamilyGradient {
  static const LinearGradient darkGradientTextStyle = LinearGradient(
    colors: [Color(0xff87fffd), Color(0xffe2aafe), Color(0xffe14eff)],
    stops: [0, 0.5, 1],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient lightGradientTextStyle = LinearGradient(
    colors: [Color(0xff489cff), Color(0xffb234ff)],
    stops: [0, 1],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
