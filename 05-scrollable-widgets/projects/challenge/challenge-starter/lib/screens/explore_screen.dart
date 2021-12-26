import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../models/models.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final mockService = MockFooderlichService();
  late ScrollController _scrollController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
              const SizedBox(height: 16),
              FriendPostListView(friendPosts: snapshot.data?.friendPosts ?? [])
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      print('i am at the bottom!');
    }
    if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      print('i am at the top!');
    }
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }
}
