import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

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
    final theme = FooderlichTheme.dark();
    // ignore: todo
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      // ignore: todo
      // TODO: Add theme
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: Scaffold(
        // ignore: todo
        // TODO: Style the title
        appBar: AppBar(
            title: Text(
          'Fooderlich',
          style: theme.textTheme.headline6,
        )),
        // ignore: todo
        // TODO: Style the body text
        body: Center(
            child: Text(
          'Let\'s get cooking 👩‍🍳',
          style: theme.textTheme.headline1,
        )),
      ),
    );
  }
}
