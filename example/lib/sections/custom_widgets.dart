import 'package:app_family_materials/chart/chartPoint.dart';
import 'package:app_family_materials/chart/miniChart.dart';
import 'package:app_family_materials/quoteRowWithChart.dart';
import 'package:flutter/material.dart';
import 'package:app_family_materials/customCheckBoxGroup.dart';
import 'package:app_family_materials/customRadioBtnGroup.dart';
import 'package:app_family_materials/customButton.dart';
import 'package:app_family_materials/customInputTextField.dart';
import 'package:app_family_materials/customSwitchButton.dart';

import '../mockData.dart';

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
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    List<ChartPoint> chartData = MockData.getMiniChartData();

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
              CustomSwitch(
                value: switchValue,
                isDisabled: !isEditable,
                onChanged: (bool value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  CustomButton(
                    strValue: 'Dis/En-able TextField',
                    onPressed: () {
                      setState(() {
                        isEditable = !isEditable;
                      });
                    },
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: CustomButton(
                      icon: Icons.add_circle_outline,
                      strValue: 'Icon Button',
                      onPressed: () {
                        setState(() {
                          isEditable = !isEditable;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Divider(height: 1),
              QuoteRowWithChart(
                stockCode: '00700',
                stockName: 'Tencent',
                market: 'HK',
                nominal: '503.500',
                perChange: '0.299%',
                chartData: chartData,
              ),
              Divider(height: 1),
              QuoteRowWithChart(
                stockCode: '00700',
                stockName: '騰訊控股',
                market: 'HK',
                nominal: '503.500',
                perChange: '+0.299%',
                chartData: chartData,
              ),
              Divider(height: 1),
              QuoteRowWithChart(
                stockCode: '09988',
                stockName: '阿里巴巴-W',
                market: 'HK',
                nominal: '503.500',
                perChange: '-0.299%',
                chartData: chartData,
              ),
              Divider(height: 1),
              QuoteRowWithChart(
                stockCode: '03690',
                stockName: '美團-W',
                market: 'HK',
                nominal: '503.500',
                perChange: '-0.299%',
                chartData: chartData,
              ),
              Divider(height: 1),
            ],
          ),
        ),
      ),
    );
  }
}
