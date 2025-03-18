import 'package:app_family_materials/materialCustomCheckBox.dart';
import 'package:app_family_materials/family_colors.dart';
import 'package:app_family_materials/testView.dart';
import 'package:flutter/material.dart';
import 'package:app_family_materials/customNavBottomBar.dart';
import 'package:app_family_materials/customCheckBoxGroup.dart';
import 'package:app_family_materials/customCheckBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;
  List<String> selectedItems = [];
  bool _checked = false;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> bodyView = [
    Text('Home View', style: optionStyle),
    Text('Search View', style: optionStyle),
    Text('Profile View', style: optionStyle),
    Text('Profile 1', style: optionStyle),
  ];

  final List<Widget> icons = [
    Icon(Icons.flag),
    Icon(Icons.timer_sharp),
    Icon(Icons.desktop_mac_outlined),
    Icon(Icons.attach_money),
  ];
  final List<String> labels = ['A', 'B', 'C', 'D'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: icons.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            bodyView[_selectedIndex],
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
            // CustomCheckbox(value: _checked, onChanged: _onChange),
            // Padding(
            //   padding: const EdgeInsets.all(18.0),
            //   child: SizedBox(
            //     width: 16,
            //     height: 16,
            //     child: CustomCheckbox(strokeWidth: 1, radius: 1, value: _checked, onChanged: _onChange),
            //   ),
            // ),
            // SizedBox(
            //   width: 30,
            //   height: 30,
            //   child: CustomCheckbox(strokeWidth: 3, radius: 3, value: _checked, onChanged: _onChange),
            // ),
          ],
        ),
      ),
      // const CustomNavBottomBar({super.key, required this.bodyView, required this.icons, required this.labels});
      bottomNavigationBar: CustomNavBottomBar(
        tabController: _tabController,
        selectedIndex: _selectedIndex,
        icons: icons,
        labels: labels,
        onTap: _onItemTapped,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: null,
      //   tooltip: 'Increment',
      //   child: TextButton(
      //     onPressed: () {
      //       // FamilyColors.getMAColor(0);
      //       Navigator.of(context).push(
      //         MaterialPageRoute(
      //           builder: (BuildContext context) {
      //             return const TestView();
      //           },
      //         ),
      //       );
      //     },
      //     child: Text("Nav To", style: TextStyle(color: FamilyColors.primaryColor)),
      //   ),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onChange(value) {
    setState(() => _checked = value);
  }
}
