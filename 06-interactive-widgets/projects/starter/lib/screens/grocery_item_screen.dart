import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import '../models/models.dart';

class GroceryItemScreen extends StatefulWidget {
  // 1
  final Function(GroceryItem) onCreate;
  // 2
  final Function(GroceryItem) onUpdate;
  // 3
  final GroceryItem? originalItem;
  // 4
  final bool isUpdating;
  const GroceryItemScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating = (originalItem != null),
        super(key: key);

  @override
  _GroceryItemScreenState createState() => _GroceryItemScreenState();
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  // ignore: todo
  // TODO: Add grocery item screen state properties
  final _nameController = TextEditingController();
  String _name = '';
  Importance _importance = Importance.low;
  DateTime _dueDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  Color _currentColor = Colors.green;
  int _currentSliderValue = 0;

// ignore: todo
// TODO: Add initState()
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // 1
    final originalItem = widget.originalItem;
    if (originalItem != null) {
      _nameController.text = originalItem.name;
      _name = originalItem.name;
      _currentSliderValue = originalItem.quantity;
      _importance = originalItem.importance;
      _currentColor = originalItem.color;
      final date = originalItem.date;
      _timeOfDay = TimeOfDay(hour: date.hour, minute: date.minute);
      _dueDate = date;
    }
    // 2
    _nameController.addListener(() {
      setState(() {
        _name = _nameController.text;
      });
    });
  }

// ignore: todo
// TODO: Add dispose()

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO 12: Add GroceryItemScreen Scaffold
    // return Container(color: Colors.orange);
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              // ignore: todo
              // TODO 24: Add callback handler
            },
          ),
        ],
        // 3
        elevation: 0.0,
        // 4
        title: Text(
          'Grocery Item',
          style: GoogleFonts.lato(fontWeight: FontWeight.w600),
        ),
      ),
      // 5
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // ignore: todo
            // TODO 13: Add name TextField
            buildNameField(),
            // ignore: todo
            // TODO 14: Add Importance selection
            // ignore: todo
            // TODO 15: Add date picker
            // ignore: todo
            // TODO 16: Add time picker
            // ignore: todo
            // TODO 17: Add color picker
            // ignore: todo
            // TODO 18: Add slider
            // ignore: todo
            // TODO: 19: Add Grocery Tile
          ],
        ),
      ),
    );
  }

  // ignore: todo
  // TODO: Add buildNameField()
  Widget buildNameField() {
    // 1
    return Column(
      // 2
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 3
        Text(
          'Item Name',
          style: GoogleFonts.lato(fontSize: 28.0),
        ),
        // 4
        TextField(
          // 5
          controller: _nameController,
          // 6
          cursorColor: _currentColor,
          // 7
          decoration: InputDecoration(
            // 8
            hintText: 'E.g. Apples, Banana, 1 Bag of salt',
            // 9
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: _currentColor),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: _currentColor),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: todo
  // TODO: Add buildImportanceField()
  

  // ignore: todo
  // TODO: ADD buildDateField()

  // ignore: todo
  // TODO: Add buildTimeField()

  // ignore: todo
  // TODO: Add buildColorPicker()

  // ignore: todo
  // TODO: Add buildQuantityField()
}
