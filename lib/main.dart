import 'package:flutter/material.dart';
import 'package:islami_app2/home/home_screen.dart';
import 'package:islami_app2/my_theme_data.dart';
import 'package:islami_app2/quran_detailes/quran_screen_details.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.themeLight,
      routes: {
      HomeScreen.routeName : (_)=> HomeScreen(),
        SuraDetails.routeName : (_)=> SuraDetails(),
      } ,
      initialRoute:HomeScreen.routeName ,

    );
  }
}
