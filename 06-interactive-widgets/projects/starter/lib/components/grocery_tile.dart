import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../models/grocery_item.dart';

class GroceryTile extends StatelessWidget {
  // 1
  final GroceryItem item;
  // 2
  final Function(bool)? onComplete;
  // 3
  final TextDecoration textDecoration;
  // 4
  GroceryTile({
    Key? key,
    required this.item,
    this.onComplete,
  })  : textDecoration =
            item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO 21: Change this Widget
    return Container(
      height: 100.0,
      // ignore: todo
      // TODO 20: Replace this color
      color: Colors.red,
    );
  }
  // ignore: todo
  // TODO: Add BuildImportance()

  // ignore: todo
  // TODO: Add buildDate()

  // ignore: todo
  // TODO: Add buildCheckbox()
}
