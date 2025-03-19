import 'package:flutter/material.dart';
import 'package:app_family_materials/customCheckBoxGroup.dart';
import 'package:app_family_materials/materialCustomCheckBox.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Examples'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialCustomCheckbox(
                items: ['Apple', 'Banana', 'Orange', 'Mango'],
                onSelectionChanged: (List<String> selected) {
                  setState(() {
                    selectedItems = selected;
                  });
                },
              ),
              CustomCheckboxGroup(
                items: ['Apple', 'Banana', 'Orange', 'Mango'],
                onSelectionChanged: (List<String> selected) {
                  setState(() {
                    selectedItems = selected;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
