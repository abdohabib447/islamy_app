import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_app/app/app_theme.dart';
import 'package:islamy_app/domain/setting-provider.dart';
import 'package:islamy_app/persentation/hadeth/view_model.dart';
import 'package:islamy_app/persentation/home_screan.dart';
import 'package:islamy_app/persentation/quran/view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() async{

  runApp(ChangeNotifierProvider(
    create: (context)=>SettingProvider(),
      child: MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(

      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
        Locale('en'), // English
    Locale('ar'), // Spanish
    ],
    locale: Locale(settingProvider.local),
    theme: MyAppTheme.themeLight,
    darkTheme: MyAppTheme.themedark,
    themeMode:settingProvider.myTheme ,
    routes: {
    HomeScrean.routeNAme: (_) => HomeScrean(),
    QuranViewModel.routeName:(_)=>QuranViewModel(),
    HadethViewModel.routeName:(_)=>HadethViewModel(),
    },
    initialRoute: HomeScrean.routeNAme,


    );
  }
}
