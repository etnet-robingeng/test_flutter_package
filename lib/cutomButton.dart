import 'package:flutter/material.dart';

import 'family_colors.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final bool loading;
  final double textSize;

  const CustomButton(
      {super.key,
        this.buttonColor = FamilyColors.primary400,
        this.textColor = FamilyColors.primary50,
        required this.onPressed,
        this.width = 150.0,
        this.height = 50.0,
        this.loading = false,
        this.textSize = 20.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: buttonColor, borderRadius: BorderRadius.circular(8)),
        child: loading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : Center(
          child: Text('CustomButton'),
        ),
      ),
    );
  }
}