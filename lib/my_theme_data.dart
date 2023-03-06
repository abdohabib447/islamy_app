import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static Color primeryColor = const Color(0xffB7935F);
  static Color accentColor = const Color(0xff0F1424);
  static var themeLight = ThemeData(
      textTheme: const TextTheme(
          headline4: (TextStyle(fontSize: 22, color: Colors.black)),
          headline6: (TextStyle(fontSize: 28, color: Colors.black)),
          subtitle2: (TextStyle(fontSize: 15, color: Colors.black))),
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
      ),

  );
  static var themeDark = ThemeData(
      textTheme: const TextTheme(
          headline4: (TextStyle(fontSize: 22, color: Color(0xffFACC1D))),
          headline6: (TextStyle(fontSize: 28, color: Color(0xffFACC1D))),
          subtitle2: (TextStyle(fontSize: 15, color: Color(0xffFACC1D)))),
      primaryColor: accentColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        titleTextStyle: TextStyle(
          color: (Colors.white),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: accentColor,
        selectedItemColor: (const Color(0xffFACC1D)),
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
      )
  );

}
