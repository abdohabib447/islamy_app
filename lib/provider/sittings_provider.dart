import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SittingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.system;
  String currentLang = 'en';
  void changeTheme(ThemeMode newTheme) async{
    final prefs = await SharedPreferences.getInstance();
    currentTheme = newTheme;
    await prefs.setString('theme', currentTheme == ThemeMode.dark ? 'dark' : 'light');
    notifyListeners();
  }
//'assets/images/main_bacjround.png'
  getMainLang(String newLang)async{
    final prefs = await SharedPreferences.getInstance();
    currentLang = newLang;
    await prefs.setString('lang', currentLang);
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
