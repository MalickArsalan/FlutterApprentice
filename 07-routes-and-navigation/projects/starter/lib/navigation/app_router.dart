import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

// 1
class AppRoute extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  // 2
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  // 3
  final AppStateManager appStateManager;

  // 4
  final GroceryManager groceryManager;

  // 5
  final ProfileManager profileManager;

  AppRoute({
    required this.appStateManager,
    required this.groceryManager,
    required this.profileManager,
  }) : navigatorKey = GlobalKey<NavigatorState>() {
    // ignore: todo
    // TODO: Add Listeners
  }

  // ignore: todo
  // TODO: Dispose listeners

  // 6
  @override
  Widget build(BuildContext context) {
    // 7
    return Navigator(
      // 8
      key: navigatorKey,
      // ignore: todo
      // TODO: Add onPopPage
      // 9
      pages: [
        // ignore: todo
        // TODO: Add SplashScreen
        // ignore: todo
        // TODO: Add LoginScreen
        // ignore: todo
        // TODO: Add OnboardingScreen
        // ignore: todo
        // TODO: Add Home
        // ignore: todo
        // TODO: Create new item
        // ignore: todo
        // TODO: Select GroceryItemScreen
        // ignore: todo
        // TODO: Add Profile Screen
        // ignore: todo
        // TODO: Add WebView Screen
      ],
    );
  }

  // ignore: todo
  // TODO: Add _handlePopPage

  // 10
  @override
  Future<void> setNewRoutePath(configuration) async => null;
}
