import 'package:flutter/material.dart';
import 'package:app_family_materials/family_themes.dart';
import 'sections/checkbox.dart';
import 'sections/text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ET Net Flutter Library Demo',
      theme: FamilyThemes.deepPurpleTheme,
      home: const MyHomePage(),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
