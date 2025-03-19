import 'package:flutter/material.dart';
import 'package:app_family_materials/family_themes.dart';
import 'controllers/theme_controller.dart';
import 'sections/checkbox.dart';
import 'sections/text_style.dart';
import 'sections/theme_style.dart';
void main() {
  runApp(const MyApp());
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
    ThemeController.themeNotifier.value = FamilyThemes.deepPurpleTheme;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeData>(
      valueListenable: ThemeController.themeNotifier,
      builder: (context, theme, child) {
        return MaterialApp(
          title: title,
          theme: theme,
          home: const MyHomePage(),
        );
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
        children: [
          NavigationListTile(
            title: 'Checkboxes',
            destination: const CheckboxPage(),
          ),
          NavigationListTile(
            title: 'Text Styles',
            destination: const TextStylePage(),
          ),
          NavigationListTile(
            title: 'Theme Styles',
            destination: const ThemeStylePage(),
          ),
        ],
      ),
    );
  }
}

class NavigationListTile extends StatelessWidget {
  final String title;
  final Widget destination;

  const NavigationListTile({
    super.key,
    required this.title,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
    );
  }
}
