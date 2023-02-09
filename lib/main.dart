import 'package:flutter/material.dart';
import 'package:islami_app2/home/hadeth_details/hadeth_details_screan.dart';
import 'package:islami_app2/home/home_screen.dart';
import 'package:islami_app2/my_theme_data.dart';
import 'package:islami_app2/provider/sittings_provider.dart';
import 'package:islami_app2/quran_detailes/quran_screen_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildcontext)=>SittingProvider(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SittingProvider>(context);
    return MaterialApp(
      theme: MyTheme.themeLight,
      darkTheme: MyTheme.themeDark,
      themeMode: settingProvider.currentTheme,
      routes: {
      HomeScreen.routeName : (_)=> HomeScreen(),
        SuraDetails.routeName : (_)=> SuraDetails(),
        HadethDetailsScrean.routeName : (_)=> HadethDetailsScrean(),
      } ,
      initialRoute:HomeScreen.routeName ,

    );
  }
}
