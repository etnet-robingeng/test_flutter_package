import 'package:flutter/material.dart';
import 'package:app_family_materials/customCheckBoxGroup.dart';
import 'package:app_family_materials/customRadioBtnGroup.dart';
import 'package:app_family_materials/customButton.dart';
import 'package:app_family_materials/customInputTextField.dart';

class CustomWidgetsShowPage extends StatefulWidget {
  const CustomWidgetsShowPage({super.key});

  @override
  State<CustomWidgetsShowPage> createState() => _CustomWidgetsShowPageState();
}

class _CustomWidgetsShowPageState extends State<CustomWidgetsShowPage> {
  List<String> selectedItems = [];
  String selectedItem = '';
  String textFieldStr = '';
  bool isEditable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets Exhibition'), backgroundColor: Theme.of(context).colorScheme.primary),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRadioBtnGroup(
                items: ['Apple', 'Banana', 'Orange', 'Mango'],
                onSelectionChanged: (String selected) {
                  setState(() {
                    selectedItem = selected;
                  });
                },
                defaultValue: 'Banana',
              ),
              CustomCheckboxGroup(
                items: ['Apple', 'Banana', 'Orange', 'Mango'],
                onSelectionChanged: (List<String> selected) {
                  setState(() {
                    selectedItems = selected;
                  });
                },
              ),
              SizedBox(height: 15),
              CustomInputTextField(
                header: 'Base TextField',
                hint: 'placeholder',
                isEditable: isEditable,
                validator: (String? value) {
                  if (value != null && value.contains(RegExp(r'\d'))) {
                    return 'input error';
                  }
                  return null;
                },
                onChanged: (String? value) {
                  if (value != null) {
                    textFieldStr = value;
                  }
                },
              ),
              CustomButton(
                strValue: 'Dis/En-able TextField',
                onPressed: () {
                  setState(() {
                    isEditable = !isEditable;
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
