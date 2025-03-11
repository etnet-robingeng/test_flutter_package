import 'package:app_family_materials/family_styles.dart';
import 'package:app_family_materials/testView.dart';
import 'package:flutter/material.dart';
import 'package:app_family_materials/customNavBottomBar.dart';
import 'package:app_family_materials/cutomButton.dart';

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
  int _counter = 0;
  late TabController _tabController;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> bodyView = [
    Text('Home View', style: optionStyle),
    Text('Search View', style: optionStyle),
    Text('Profile View', style: optionStyle),
  ];

  final List<Widget> icons = [Icon(Icons.home), Icon(Icons.search), Icon(Icons.person)];

  final List<String> labels = ['Home', 'Search', 'Profile'];

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            bodyView[_selectedIndex],
            CustomButton(onPressed: _incrementCounter),
            // const Text('You have pushed the button this many times:'),
            Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
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
}
