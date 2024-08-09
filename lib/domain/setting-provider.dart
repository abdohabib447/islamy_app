import 'package:flutter/material.dart';
import 'package:islamy_app/app/app_theme.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode myTheme = ThemeMode.light;
  String local = 'en';
  void chaneMyTheme(ThemeMode newTheme) {
    myTheme = newTheme;
    notifyListeners();
  }
  void changeMyLang(String newLocal){
    local = newLocal;
    notifyListeners();
  }

  String changeBackground() {
   return myTheme == ThemeMode.light
        ? 'assets/image/main_background_light.png'
        : 'assets/image/bg.png';
  }
  Color themeColor(){
    return myTheme == ThemeMode.light ? Colors.black : MyAppTheme.accentColor;
  }
  String modeName() {
    return myTheme == ThemeMode.light
        ? 'Light'
        : 'Dark';
  }

}
