import 'package:flutter/material.dart';
// 1
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 2
    final theme = FooderlichTheme.light();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 3
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
