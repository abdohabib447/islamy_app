import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/app/app_theme.dart';
import 'package:islamy_app/persentation/quran/view.dart';
import 'package:provider/provider.dart';

import '../../domain/setting-provider.dart';

class QuranViewModel extends StatefulWidget {
  static String routeName = 'quran view model';

  @override
  State<QuranViewModel> createState() => _QuranViewModelState();
}

class _QuranViewModelState extends State<QuranViewModel> {
  List<String> suraLinesDisplay = [];

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as Model;
    if (suraLinesDisplay.isEmpty) loadQuranFiles(args.index + 1);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingProvider.changeBackground()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: Container(
          margin: EdgeInsetsDirectional.all(15),
          padding: EdgeInsetsDirectional.all(15),
          child: suraLinesDisplay.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Card(
                  color: settingProvider.myTheme == ThemeMode.light
                      ? Colors.white
                      : MyAppTheme.primaryDark,
                  margin: EdgeInsets.all(4),
                  borderOnForeground: true,
                  child: ListView.separated(
                      itemBuilder: (_, index) {
                        return Text(
                          suraLinesDisplay[index],
                          style: Theme.of(context).textTheme.bodyLarge,
                        );
                      },
                      separatorBuilder: (_, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          color: Theme.of(context).primaryColor,
                          height: 1,
                        );
                      },
                      itemCount: suraLinesDisplay.length),
                ),
        ),
      ),
    );
  }

  void loadQuranFiles(int suraIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$suraIndex.txt');
    List<String> suraLines = fileContent.trim().split('\n');
    suraLinesDisplay = suraLines;
    setState(() {});
  }
}
