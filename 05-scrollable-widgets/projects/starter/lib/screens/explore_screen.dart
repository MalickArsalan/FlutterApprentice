import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  // 1
  final mockeService = MockFooderlichService();
  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO 1: Add TodayRecipeListView FutureBuilder
    // 1
    return FutureBuilder(
      //2
      future: mockeService.getExploreData(),
      // 3
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        // 4
        if (snapshot.connectionState == ConnectionState.done) {
          // 5
          // ignore: todo
          // TODO: Add Nested List Views
          return ListView(
            // 6
            scrollDirection: Axis.vertical,
            children: [
              // 7
              // ignore: todo
              // TODO: Replace this with TodayRecipeListView
              TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
              // 8
              const SizedBox(height: 16),
              // 9
              // ignore: todo
              // TODO: Replace this with FriendPostListView
              FriendPostListView(friendPosts: snapshot.data?.friendPosts ?? [])
            ],
          );
        } else {
          // 10
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
