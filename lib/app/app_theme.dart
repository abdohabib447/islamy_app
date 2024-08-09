import 'dart:ui';

import 'package:flutter/material.dart';

class MyAppTheme{
   static Color primaryLight = Color(0xffB7935F);
   static Color primaryDark = Color(0xff141A2E);
   static Color accentColor = Color(0xffFACC1D);
   static final  ThemeData themeLight = ThemeData(
     primaryColor: primaryLight ,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.black,
      ),
    ),
    textTheme:const TextTheme(
      bodySmall: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 25,
        color: Colors.black,
      ),
    ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       backgroundColor: primaryLight,
       selectedItemColor: Colors.black,
       unselectedItemColor: Colors.white,
       unselectedLabelStyle:TextStyle(
         color: Colors.white
       )
     ),
     bottomSheetTheme: BottomSheetThemeData(
       backgroundColor: primaryLight,
         shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
     )
  );
   static final  ThemeData themedark = ThemeData(
     primaryColor: primaryDark ,
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: AppBarTheme(
       color: Colors.transparent,
       elevation: 0,
       centerTitle: true,
       titleTextStyle:TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 30,
         color: Colors.white,
       ),
     ),
     textTheme: TextTheme(
       bodySmall: TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 30,
         color: Colors.black,
       ),
       bodyMedium: TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 25,
         color: Colors.black,
       ),
       bodyLarge: TextStyle(
         fontWeight: FontWeight.w500,
         fontSize: 25,
         color: accentColor,
       ),
     ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
         backgroundColor: primaryDark,
         selectedItemColor: accentColor,
         unselectedItemColor: Colors.white,
         unselectedLabelStyle:TextStyle(
             color: Colors.white
         )
     ),
       bottomSheetTheme: BottomSheetThemeData(
         backgroundColor: primaryDark,
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
       )
   );
}