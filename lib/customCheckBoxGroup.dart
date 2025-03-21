import 'package:app_family_materials/family_colors.dart';
import 'package:flutter/material.dart';

import 'customCheckBox.dart';

class CustomCheckboxGroup extends StatefulWidget {
  final List<String> items;
  final Function(List<String>) onSelectionChanged;
  final TextStyle labelStyle;

  CustomCheckboxGroup({super.key, required this.items, required this.onSelectionChanged, TextStyle? labelStyle})
    : labelStyle = labelStyle ?? TextStyle(color: FamilyColors.neutral500, fontFamily: 'PingFang TC', fontSize: 14);

  @override
  CustomCheckboxGroupState createState() => CustomCheckboxGroupState();
}

class CustomCheckboxGroupState extends State<CustomCheckboxGroup> {
  List<String> selectedItems = [];

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
                    child: CustomCheckbox(
                      tickWidth: 2,
                      radius: 2,
                      value: selectedItems.contains(item),
                      onChanged: (bool? value) {
                        setState(() {
                          if (value == true) {
                            selectedItems.add(item);
                          } else {
                            selectedItems.remove(item);
                          }
                          widget.onSelectionChanged(selectedItems);
                        });
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
