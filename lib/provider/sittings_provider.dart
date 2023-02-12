import 'package:flutter/material.dart';

class SittingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.system;
  String currentLang = 'en';
  void changeTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    notifyListeners();
  }
//'assets/images/main_bacjround.png'
  getMainLang(String newLang){
    currentLang = newLang;
    notifyListeners();
  }
  bool isEnglish() {
    return currentLang == 'en';
  }
  getMainBackgroundImage() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/bg.png'
        : 'assets/images/main_bacjround.png';
  }

  bool isDarkMode() {
    return currentTheme == ThemeMode.dark;
  }
  getSebhaLogohead(){
    return currentTheme == ThemeMode.dark ? 'assets/images/head of seb7a_dark.png' :
    'assets/images/head of seb7a_light.png';
  }
  getSebhaLogobody(){
    return currentTheme == ThemeMode.dark ? 'assets/images/body of seb7a_dark.png' :
    'assets/images/body of seb7a_light.png';
  }
}
