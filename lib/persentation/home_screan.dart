import 'package:flutter/material.dart';
import 'package:islamy_app/domain/setting-provider.dart';
import 'package:islamy_app/persentation/hadeth/view.dart';
import 'package:islamy_app/persentation/quran/view.dart';
import 'package:islamy_app/persentation/radio/view.dart';
import 'package:islamy_app/persentation/sebha/view.dart';
import 'package:islamy_app/persentation/setting/view.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../app/app_string/AppString.dart';

class HomeScrean extends StatefulWidget {
  static String routeNAme = 'home_screen';

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  int newlyIndex=0;

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingProvider.changeBackground()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.islamy,
          ),
        ),
        body: items[newlyIndex],
        bottomNavigationBar :BottomNavigationBar(
          onTap: (index) {
            newlyIndex = index;
            setState(() {});
          },
            items:[
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/image/quran.png')),
                label: AppString.quranIconName
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/hadeth 6.png')),
                label: AppString.hadethIconName
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/sebha_blue.png')),
                label: AppString.sephaIconName
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/radio.png')),
                label: AppString.radioIconName
              ),
              BottomNavigationBarItem(icon: Icon(Icons.settings) , label: 'settiong'),
            ]
        ),
      ),
    );
  }

  List items=[QuranView(),HadethView(),SebhaView(),RadioView(),SettingView()];
}
