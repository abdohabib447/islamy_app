import 'package:flutter/material.dart';

class SittingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.system;
  void changeTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    notifyListeners();
  }

  getMainBackgroundImage() {
    return currentTheme == ThemeMode.light
        ? 'assets/images/main_bacjround.png'
        : 'assets/images/bg.png';
  }

  bool isDarkMode() {
    return currentTheme == ThemeMode.dark;
  }
}
