import 'package:app_family_materials/customNavBottomBar.dart';
import 'package:app_family_materials/model/navBarItem.dart';
import 'package:flutter/material.dart';
import 'package:app_family_materials/family_themes.dart';
import 'package:flutter/services.dart';
import 'controllers/theme_controller.dart';
import 'sections/custom_widgets.dart';
import 'sections/text_style.dart';
import 'sections/theme_style.dart';
import 'sections/shadows_blurs_style.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge).then(
        (_) => runApp(MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final title = "ET Net Flutter Library Demo";

  @override
  void initState() {
    super.initState();
    // Initialize the ThemeController with the default theme
    ThemeController.themeNotifier.value = FamilyThemes.deepPurple;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<FamilyThemes>(
      valueListenable: ThemeController.themeNotifier,
      builder: (context, theme, child) {
        return MaterialApp(title: title, theme: theme.theme, home: const MyHomePage());
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = "Library";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int navBarIndex = 0;
  List<NavBarItem> bottomNavBarItems = [
    NavBarItem(label: '首頁', icon: Icon(Icons.home)),
    NavBarItem(label: '新聞', icon: Icon(Icons.bar_chart)),
    NavBarItem(label: 'AI', icon: Icon(Icons.ac_unit_sharp)),
    NavBarItem(label: '播放室', icon: Icon(Icons.photo_camera_front)),
    NavBarItem(label: '我', icon: Icon(Icons.person)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(title: Text(widget.title), backgroundColor: Theme.of(context).colorScheme.primary),
      body: ListView(
        children: [
          _navigationListTile('Custom Widgets', const CustomWidgetsShowPage()),
          _navigationListTile('Text Styles', const TextStylePage()),
          _navigationListTile('Theme Styles', const ThemeStylePage()),
          _navigationListTile('Shadows & Blurs', const ShadowsBlursStylePage()),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: CustomNavBottomBar(
          selectedIndex: navBarIndex,
          barItems: bottomNavBarItems,
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

  Widget _navigationListTile(String title, Widget destination) {
    return ListTile(
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(title),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
      },
    );
  }
}
