import 'dart:async';
import 'package:flutter/material.dart';

// 1
class FooderlichTab {
  static const int explore = 0;
  static const int recipes = 1;
  static const int toBuy = 2;
}

class AppStateManager extends ChangeNotifier {
  // 2
  bool _initialized = false;
  // 3
  bool _loggedIn = false;
  // 4
  bool _onboardingComplete = false;
  // 5
  int _selectedTab = FooderlichTab.explore;

  // 6
  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  bool get isOnboardingComplete => _onboardingComplete;
  int get getSelectedTab => _selectedTab;

  // ignore: todo
  // TODO: Add initializeApp
  void initializeApp() {
    // 7
    Timer(const Duration(milliseconds: 2000), () {
      
    });
  }
  // ignore: todo
  // TODO: Add login
  // ignore: todo
  // TODO: Add completeOnboarding
  // ignore: todo
  // TODO: Add goToTab
  // ignore: todo
  // TODO: Add goToRecipes
  // ignore: todo
  // TODO: Add logout
}
