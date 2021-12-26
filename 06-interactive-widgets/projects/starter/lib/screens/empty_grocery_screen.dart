import 'package:flutter/material.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO 3: Replace and add layout widgets
    // 1
    return Padding(
      padding: const EdgeInsets.all(30),
      // 2
      child: Center(
        // 3
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: todo
            // TODO 4: Add empty image

            // 1
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/fooderlich_assets/empty_list.png'),
              ),
            ),
            // ignore: todo
            // TODO 5: Add empty screen title
            Text(
              'No Groceries',
              style: Theme.of(context).textTheme.headline6,
            ),
            // ignore: todo
            // TODO 6: Add empty screen subtitle
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            // ignore: todo
            // TODO 7: Add browse recipes button
            MaterialButton(
                textColor: Colors.white,
                child: const Text('Browse Recipes'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.green,
                onPressed: () {
                  // ignore: todo
                  // TODO 8: Go to Recipes Tab
                }),
          ],
        ),
      ),
    );
  }
}
