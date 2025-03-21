import 'package:app_family_materials/customRadioButton.dart';
import 'package:flutter/material.dart';

import 'family_colors.dart';

class CustomRadioBtnGroup extends StatefulWidget {
  final List<String> items;
  final Function(String) onSelectionChanged;
  final String? defaultValue;
  final TextStyle labelStyle;

  CustomRadioBtnGroup({
    super.key,
    required this.items,
    required this.onSelectionChanged,
    this.defaultValue,
    TextStyle? labelStyle,
  }) : labelStyle = labelStyle ?? TextStyle(color: FamilyColors.neutral500);

  @override
  CustomRadioBtnGroupState createState() => CustomRadioBtnGroupState();
}

class CustomRadioBtnGroupState extends State<CustomRadioBtnGroup> {
  String? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          widget.items.map((item) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 5, bottom: 5),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CustomRadioButton(
                      value: _selectedItem == item,
                      onChanged: (bool? value) {
                        if (value == true) {
                          setState(() {
                            _selectedItem = item;
                            widget.onSelectionChanged(_selectedItem!);
                          });
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Text(item, style: widget.labelStyle),
              ],
            );
          }).toList(),
    );
  }
}
