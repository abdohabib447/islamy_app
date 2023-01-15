import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static Color primeryColor = const Color(0xffB7935F);
  static Color accentColor = const Color(0xff0F1424);
  static var themeLight = ThemeData(
      primaryColor: primeryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Color(0xff242424),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primeryColor,
        selectedItemColor: (Colors.black),
        unselectedItemColor: (Colors.white),
        showSelectedLabels: (true),
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(
          size: 30,
          color: Colors.black,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 25,
          color: Colors.white,
        ),
      ));
  static var themeDark = ThemeData(
      primaryColor: accentColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        // actionsIconTheme:IconThemeData(color: Colors.black,size: 3) ,
        elevation: 0,
        // backgroundColor: Colors.transparent,
        centerTitle: true,
        color: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Color(0xff242424),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primeryColor,
        selectedItemColor: (Colors.black),
        unselectedItemColor: (Colors.white),
        showSelectedLabels: (true),
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(
          size: 30,
          color: Colors.black,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 25,
          color: Colors.white,
        ),
      ));
}
