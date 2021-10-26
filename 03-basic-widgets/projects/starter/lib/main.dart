import 'package:flutter/material.dart';
// 5
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: Create theme
    // 6
    final theme = FooderlichTheme.dark();

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // ignore: todo
      // TODO: Add theme
      // 7
      theme: theme,
      title: 'Fooderlich',

      // 4
      // ignore: todo
      // TODO: Apply Home widget
      // 3
      home: Home(),
    );
  }
}
