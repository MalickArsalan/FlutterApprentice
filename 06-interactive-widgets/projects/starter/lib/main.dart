import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

import 'package:provider/provider.dart';
import 'models/models.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: 'Fooderlich',
        // ignore: todo
        // TODO 8: Replace this with MultiProvider
        //home: const Home(),
        // 1
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => TabManager())
            // ignore: todo
            // TODO 10: Add GroceryManager Provider
          ],
          child: const Home(),
        ));
  }
}
