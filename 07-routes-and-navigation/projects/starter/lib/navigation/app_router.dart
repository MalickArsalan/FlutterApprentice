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
      onPopPage: _handlePopPage,
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

  bool _handlePopPage(
    // 1
    Route<dynamic> route,
    // 2
    result,
  ) {
    // 3
    if (!route.didPop(result)) {
      // 4
      return false;
    }
    // 5
    // ignore: todo
    // TODO: Handle Onboarding and splash
    // ignore: todo
    // TODO: Handle state when user closes grocery item screen
    // ignore: todo
    // TODO: Handle state when user closes profile screen
    // ignore: todo
    // TODO: Handle state when user closes WebView screen
    // 6
    return true;
  }

  // 10
  @override
  Future<void> setNewRoutePath(configuration) async => null;
}
