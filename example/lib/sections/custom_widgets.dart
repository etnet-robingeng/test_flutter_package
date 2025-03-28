import 'package:app_family_materials/chart/chartPoint.dart';
import 'package:app_family_materials/family_colors.dart';
import 'package:app_family_materials/openAIWidget.dart';
import 'package:app_family_materials/quoteRowWithChart.dart';
import 'package:flutter/material.dart';
import 'package:app_family_materials/customCheckBoxGroup.dart';
import 'package:app_family_materials/customRadioBtnGroup.dart';
import 'package:app_family_materials/customButton.dart';
import 'package:app_family_materials/customInputTextField.dart';
import 'package:app_family_materials/customSwitchButton.dart';
import 'theme_preview.dart' show ThemeAppBar;

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

  int navBarIndex = 0;

  double selectedTextSize = 16.0;
  final List<double> _textSizeOptions = [12.0, 14.0, 16.0, 18.0, 20.0, 24.0];

  @override
  Widget build(BuildContext context) {
    List<ChartPoint> chartData = MockData.getMiniChartData();
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: ThemeAppBar(title: 'Widgets Exhibition', scaffoldKey: scaffoldKey),
      body: CustomScrollView(
        slivers: [
          // Add the app bar to the CustomScrollView.
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            expandedHeight: 120.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                final isExpanded = constraints.maxHeight > kToolbarHeight;
                return FlexibleSpaceBar(
                  title: isExpanded ? null : Text('Text Size: ${selectedTextSize.toInt()}'),
                  centerTitle: true,
                  background: _buildFilterWidget(context),
                );
              },
            ),
          ),
          // Next, create a SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
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
                      labelStyle: TextStyle(color: FamilyColors.neutral500, fontSize: selectedTextSize),
                    ),
                    CustomCheckboxGroup(
                      items: ['Apple', 'Banana', 'Orange', 'Mango'],
                      labelStyle: TextStyle(color: FamilyColors.neutral500, fontSize: selectedTextSize),
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
                          strValue: isEditable ? 'Disable' : 'Enable',
                          textSize: selectedTextSize,
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
                            textSize: selectedTextSize,
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
                    SizedBox(height: 15),
                    Container(
                      color: Colors.black87,
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'Dark Text Color',
                        style: TextStyle(
                          fontSize: selectedTextSize,
                          foreground:
                              Paint()
                                ..shader = LinearGradient(
                                  colors: [Color(0xff87fffd), Color(0xffe2aafe), Color(0xffe14eff)],
                                  stops: [0, 0.5, 1],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 0.0)),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        'Light Text Color',
                        style: TextStyle(
                          fontSize: selectedTextSize,
                          foreground:
                              Paint()
                                ..shader = LinearGradient(
                                  colors: [Color(0xff489cff), Color(0xffb234ff)],
                                  stops: [0, 1],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 0.0)),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    OpenAiWidget(
                      onPressed: () {
                        setState(() {
                          isEditable = !isEditable;
                        });
                      },
                      lineOne: '早晨！',
                      lineTwo: '你可以問我任何關於股票嘅嘢',
                      icon: Icons.star,
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              );
            }, childCount: 1),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 130,
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          backgroundColor: Theme.of(context).colorScheme.surface,
          unselectedFontSize: selectedTextSize,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首頁'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: '新聞'),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: 'AI'),
            BottomNavigationBarItem(icon: Icon(Icons.photo_camera_front), label: '播放室'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '我'),
          ],
          currentIndex: navBarIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: (index) {
            if (index != navBarIndex) {
              setState(() {
                navBarIndex = index;
              });
            }
          },
        ),
      ),
    );
  }

  Widget _buildFilterWidget(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff9796f0), Color(0xfffbc7d4)],
          stops: [0, 1],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      padding: EdgeInsets.only(bottom: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Text Size: ${selectedTextSize.toInt()}',
            style: TextStyle(color: Colors.white, fontSize: selectedTextSize, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  _textSizeOptions.map((size) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: ChoiceChip(
                        label: Text('${size.toInt()}'),
                        selected: selectedTextSize == size,
                        selectedColor: Theme.of(context).colorScheme.primary,
                        onSelected: (selected) {
                          setState(() {
                            selectedTextSize = size;
                          });
                        },
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
