import 'package:flutter/material.dart';
import 'package:islami_app2/home/hadeth/hadeth_tap.dart';
import 'package:islami_app2/home/quran/quran_tap.dart';
import 'package:islami_app2/home/radio/radio_tap.dart';
import 'package:islami_app2/home/sebha/sebha_tap.dart';
import 'package:islami_app2/home/setting/setting.dart';
import 'package:islami_app2/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../provider/sittings_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  var taps = [quran(), hadeth(), sebha(), radio(), Setting()];

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SittingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(settingProvider.currentTheme == ThemeMode.light
                ? 'assets/images/main_bacjround.png'
                : 'assets/images/bg.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0, // backgroundColor: Colors.transparent,
          title: const Text('Islamy'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 40,
            currentIndex: index,
            onTap: (newlyindex) {
              setState(() {
                index = newlyindex;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                    AssetImage('assets/images/quran.png'),
                  ),
                  label: 'Quran'),
              const BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/hadeth.png'),
                  ),
                  label: 'Hadeth'),
              const BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/sebha.png'),
                  ),
                  label: 'sebha'),
              const BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/radio.png'),
                  ),
                  label: 'radio'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "setting"),
            ]),
        body: taps[index],
      ),
    );
  }
}
