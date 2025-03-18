import 'package:app_family_materials/family_colors.dart';
import 'package:flutter/material.dart';

class MaterialCustomCheckbox extends StatefulWidget {
  final List<String> items;
  final Function(List<String>) onSelectionChanged;

  const MaterialCustomCheckbox({super.key, required this.items, required this.onSelectionChanged});

  @override
  MaterialCustomCheckboxState createState() => MaterialCustomCheckboxState();
}

class MaterialCustomCheckboxState extends State<MaterialCustomCheckbox> {
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          widget.items.map((item) {
            return CheckboxListTile(
              title: Text(item),
              value: selectedItems.contains(item),
              activeColor: FamilyColors.primary500,
              checkColor: FamilyColors.neutral0,
              controlAffinity: ListTileControlAffinity.leading,
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
            );
          }).toList(),
    );
  }
}
