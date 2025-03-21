import 'package:flutter/material.dart';

class SpacingColumn extends StatelessWidget {
  const SpacingColumn({
    super.key,
    required this.children,
    required this.spacing,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
  });

  final List<Widget> children;
  final double spacing;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;

  @override
  Widget build(BuildContext context) {
    final List<Widget> columnChildren = <Widget>[];

    for (final Widget child in children) {
      columnChildren.add(child);
      columnChildren.add(SizedBox(height: spacing));
    }

    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: columnChildren,
    );
  }
}
