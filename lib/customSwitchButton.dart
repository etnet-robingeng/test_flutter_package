import 'package:app_family_materials/family_colors.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool isDisabled;

  const CustomSwitch({super.key, required this.value, required this.onChanged, required this.isDisabled});

  @override
  CustomSwitchState createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    Color borderColor =
        widget.isDisabled
            ? FamilyColors.neutral100
            : (_value ? Theme.of(context).primaryColor : Theme.of(context).disabledColor);
    Color bgColor =
        widget.isDisabled
            ? FamilyColors.neutral100
            : (_value ? Theme.of(context).primaryColor : FamilyColors.neutral20);
    Color disabledIconColor =
        widget.isDisabled
            ? FamilyColors.neutral500
            : (_value ? Theme.of(context).colorScheme.surface : Theme.of(context).disabledColor);
    return GestureDetector(
      onTap: () {
        if (!widget.isDisabled) {
          setState(() {
            _value = !_value;
          });
          widget.onChanged(_value);
        }
      },
      child: Container(
        width: 48,
        height: 28,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(99),
          border: Border.all(color: borderColor, width: 1.5),
        ),
        child: AnimatedAlign(
          duration: Duration(milliseconds: 200),
          alignment: _value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.only(left: 3, right: 3, top: 1, bottom: 1),
            width: 20,
            height: 20,
            decoration: BoxDecoration(color: disabledIconColor, shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
