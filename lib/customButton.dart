import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final bool loading;
  final double textSize;
  final String strValue;
  final IconData? icon;
  final Color? splashColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    this.width = 150.0,
    this.height = 50.0,
    this.loading = false,
    this.textSize = 20.0,
    this.strValue = 'CustomButton',
    this.icon,
    this.splashColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(4),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        splashColor: splashColor ?? Theme.of(context).canvasColor.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(4),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
          child: loading ? Center(child: CircularProgressIndicator()) : Center(child: _buildContent(context)),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    Color contentColor = Theme.of(context).colorScheme.surface;
    if (icon != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: contentColor),
          const SizedBox(width: 8),
          Text(strValue, style: TextStyle(color: contentColor)),
        ],
      );
    } else {
      return Center(child: Text(strValue, style: TextStyle(color: contentColor)));
    }
  }
}
