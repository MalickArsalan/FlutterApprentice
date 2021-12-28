import 'package:flutter/material.dart';

import 'empty_grocery_screen.dart';

import 'package:provider/provider.dart';
import '../models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO 4: Add a scaffold widget
    // 5
    return Scaffold(
      // 6
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // ignore: todo
          // TODO 11: Present GroceryItemScreen
        },
      ),
      // 7
      body: buildGroceryScreen(),
    );
    // ignore: todo
    // TODO 2: Replace with EmptyGroceryScreen
    // return const EmptyGroceryScreen();
  }
  // ignore: todo
  // TODO: Add buildGroceryScreen

  Widget buildGroceryScreen() {
    // 1
    return Consumer<GroceryManager>(
      // 2
      builder: (context, manager, child) {
        // 3
        if (manager.groceryItems.isNotEmpty) {
          // ignore: todo
          // TODO 25: Add GroceryListScreen
          return Container();
        } else {
          // 4
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
